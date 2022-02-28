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
CREATE PROCEDURE dbo.SelectParentResponsibilityQuestions (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @ParentResponsibilityQuestionId BIGINT
            , @QuestionText NVARCHAR(250);
        DECLARE @ParentResponsibilityQuestions AS TABLE (
            ParentResponsibilityQuestionId BIGINT
            , QuestionText NVARCHAR(250)
            , IsAnswered BIT
            )

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT ParentResponsibilityQuestionId
            , QuestionText
        FROM dbo.ParentResponsibilityQuestions;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @ParentResponsibilityQuestionId
            , @QuestionText;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.ParentsResponsibilityToChilds
                    WHERE KhanaId = @KhanaId
                        AND ParentResponsibilityQuestionId = @ParentResponsibilityQuestionId
                    )
            BEGIN
                INSERT INTO @ParentResponsibilityQuestions
                VALUES (
                    @ParentResponsibilityQuestionId
                    , @QuestionText
                    , 0
                    )
            END
            ELSE
            BEGIN
                INSERT INTO @ParentResponsibilityQuestions
                VALUES (
                    @ParentResponsibilityQuestionId
                    , @QuestionText
                    , 1
                    )
            END

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @ParentResponsibilityQuestionId
                , @QuestionText;
        END;

        CLOSE CURSOR_PRODUCT;

        DEALLOCATE CURSOR_PRODUCT;

        --End Main Block
        SELECT *
        FROM @ParentResponsibilityQuestions;

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
