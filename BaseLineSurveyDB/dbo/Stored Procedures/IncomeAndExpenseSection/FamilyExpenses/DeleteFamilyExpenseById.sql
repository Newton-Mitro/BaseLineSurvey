/*
Stored Procedure DeleteFamilyExpenseById	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 03 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 03 February 2022
Script Description            : This procedure will Delete Family Expense By Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteFamilyExpenseById (
    @FamilyExpenseId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE FROM dbo.FamilyExpenses
        WHERE FamilyExpenseId = @FamilyExpenseId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Nothing to delete.'

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
