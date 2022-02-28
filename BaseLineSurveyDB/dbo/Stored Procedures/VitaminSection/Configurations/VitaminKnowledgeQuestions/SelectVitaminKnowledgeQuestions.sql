/*
Stored Procedure SelectVitaminKnowledgeQuestions		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 31 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 31 January 2022
Script Description            : This procedure will Select Vitamin Knowledge Questions
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectVitaminKnowledgeQuestions (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @VitaminKnowledgeQuestionId BIGINT
            , @QuestionText NVARCHAR(250);
        DECLARE @VitaminKnowledgeQuestions AS TABLE (
            VitaminKnowledgeQuestionId BIGINT
            , QuestionText NVARCHAR(250)
            , IsAnswered BIT
            )

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT VitaminKnowledgeQuestionId
            , QuestionText
        FROM dbo.VitaminKnowledgeQuestions;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @VitaminKnowledgeQuestionId
            , @QuestionText;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.VitaminKnowledges
                    WHERE KhanaId = @KhanaId
                        AND QuestionId = @VitaminKnowledgeQuestionId
                    )
            BEGIN
                INSERT INTO @VitaminKnowledgeQuestions
                VALUES (
                    @VitaminKnowledgeQuestionId
                    , @QuestionText
                    , 0
                    )
            END
            ELSE
            BEGIN
                INSERT INTO @VitaminKnowledgeQuestions
                VALUES (
                    @VitaminKnowledgeQuestionId
                    , @QuestionText
                    , 1
                    )
            END

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @VitaminKnowledgeQuestionId
                , @QuestionText;
        END;

        CLOSE CURSOR_PRODUCT;

        DEALLOCATE CURSOR_PRODUCT;

        --End Main Block
        SELECT *
        FROM @VitaminKnowledgeQuestions;

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
