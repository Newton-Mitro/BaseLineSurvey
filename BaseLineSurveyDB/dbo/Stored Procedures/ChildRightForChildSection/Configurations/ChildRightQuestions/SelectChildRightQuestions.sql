/*
Stored Procedure SelectChildRightQuestions		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 31 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 31 January 2022
Script Description            : This procedure will Select Child Right Questions
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectChildRightQuestions (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @ChildRightQuestionId BIGINT
            , @QuestionText NVARCHAR(250);
        DECLARE @ChildRightQuestions AS TABLE (
            ChildRightQuestionId BIGINT
            , QuestionText NVARCHAR(250)
            , IsAnswered BIT
            )

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT ChildRightQuestionId
            , QuestionText
        FROM dbo.ChildRightQuestions;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @ChildRightQuestionId
            , @QuestionText;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.ChildRights
                    WHERE KhanaId = @KhanaId
                        AND ChildRightQuestionId = @ChildRightQuestionId
                    )
            BEGIN
                INSERT INTO @ChildRightQuestions
                VALUES (
                    @ChildRightQuestionId
                    , @QuestionText
                    , 0
                    )
            END
            ELSE
            BEGIN
                INSERT INTO @ChildRightQuestions
                VALUES (
                    @ChildRightQuestionId
                    , @QuestionText
                    , 1
                    )
            END

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @ChildRightQuestionId
                , @QuestionText;
        END;

        CLOSE CURSOR_PRODUCT;

        DEALLOCATE CURSOR_PRODUCT;

        --End Main Block
        SELECT *
        FROM @ChildRightQuestions;

        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
