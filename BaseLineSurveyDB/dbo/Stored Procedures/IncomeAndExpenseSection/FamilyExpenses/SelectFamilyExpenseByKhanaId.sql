/*
Stored Procedure SelectFamilyExpenseByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 03 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 03 February 2022
Script Description            : This procedure will Select Family Expense By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyExpenseByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FamilyExpenses.*
            , ExpenseSources.SourceName
            , InformationStatuses.InformationStatusName
        FROM dbo.FamilyExpenses
        LEFT JOIN ExpenseSources
            ON FamilyExpenses.ExpenseSourceId = ExpenseSources.ExpenseSourceId
        LEFT JOIN dbo.InformationStatuses
            ON FamilyExpenses.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId ORDER BY FamilyExpenseId DESC

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Recors not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
