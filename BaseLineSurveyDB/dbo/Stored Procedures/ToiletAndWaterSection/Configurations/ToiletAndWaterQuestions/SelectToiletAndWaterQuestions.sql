/*
Stored Procedure SelectToiletAndWaterQuestions		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 31 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 31 January 2022
Script Description            : This procedure will Select Toilet And Water Questions
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectToiletAndWaterQuestions (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @ToiletAndWaterQuestionId BIGINT
            , @QuestionText NVARCHAR(250);
        DECLARE @ToiletAndWaterQuestions AS TABLE (
            ToiletAndWaterQuestionId BIGINT
            , QuestionText NVARCHAR(250)
            , IsAnswered BIT
            )

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT ToiletAndWaterQuestionId
            , QuestionText
        FROM dbo.ToiletAndWaterQuestions;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @ToiletAndWaterQuestionId
            , @QuestionText;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.ToiletAndWaterInfos
                    WHERE KhanaId = @KhanaId
                        AND QuestionId = @ToiletAndWaterQuestionId
                    )
            BEGIN
                INSERT INTO @ToiletAndWaterQuestions
                VALUES (
                    @ToiletAndWaterQuestionId
                    , @QuestionText
                    , 0
                    )
            END
            ELSE
            BEGIN
                INSERT INTO @ToiletAndWaterQuestions
                VALUES (
                    @ToiletAndWaterQuestionId
                    , @QuestionText
                    , 1
                    )
            END

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @ToiletAndWaterQuestionId
                , @QuestionText;
        END;

        CLOSE CURSOR_PRODUCT;

        DEALLOCATE CURSOR_PRODUCT;

        --End Main Block
        SELECT *
        FROM @ToiletAndWaterQuestions;

        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            SET @ReturnResult = 'Failed'

            ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
        END
    END CATCH
END;
