/*
Stored Procedure SelectCooperativeQuestionsAndOptions		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 24 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 24 January 2022
Script Description            : This procedure will SelectCooperativeQuestionsAndOptions
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectCooperativeQuestionsAndOptions (
    @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT * FROM dbo.CooperativeQuestions;
        SELECT * FROM dbo.CooperativeOptions;
         IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'
        --End Main Block

       

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
