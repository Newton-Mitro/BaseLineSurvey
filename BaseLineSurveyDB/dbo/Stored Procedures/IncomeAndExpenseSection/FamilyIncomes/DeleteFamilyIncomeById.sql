/*
Stored Procedure DeleteFamilyIncomeById	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 02 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 02 February 2022
Script Description            : This procedure will Delete Family Income By Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteFamilyIncomeById (
    @FamilyIncomeId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE
        FROM dbo.FamilyIncomes
        WHERE FamilyIncomeId = @FamilyIncomeId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Nothing to delete.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
