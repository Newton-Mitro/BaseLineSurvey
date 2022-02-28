/*
Stored Procedure SelectVitaminKnowledgeOptionsWithSelectedOption		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 25 January 2022
Script Description            : This procedure will SelectVitaminKnowledgeOptionsWithSelectedOption
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectVitaminKnowledgeOptionsWithSelectedOption (
    @KhanaId BIGINT
    , @QuestionId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @RowCount AS INT;

        SET @RowCount = 0;

        SELECT *
        FROM VitaminKnowledgeOptions
        WHERE QuestionsId = @QuestionId;

        SET @RowCount = @RowCount + @@ROWCOUNT

        SELECT *
        FROM VitaminKnowledges
        WHERE KhanaId = @KhanaId
            AND QuestionId = @QuestionId;

        SET @RowCount = @RowCount + @@ROWCOUNT

        --End Main Block
        IF @RowCount > 0
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
