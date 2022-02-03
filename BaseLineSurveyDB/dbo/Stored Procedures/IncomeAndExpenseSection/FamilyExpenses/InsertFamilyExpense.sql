/*
Stored Procedure InsertFamilyExpense	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 03 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 03 February 2022
Script Description            : This procedure will Insert Family Expense
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertFamilyExpense (
    @KhanaId BIGINT
    , @ExpenseSourceId BIGINT
    , @AnnualExpenseAmount MONEY
    , @InformationStatusCode BIGINT = 1
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @ScopeId BIGINT = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        INSERT INTO dbo.FamilyExpenses(
            KhanaId
            , ExpenseSourceId
            , InformationStatusCode
            , AnnualExpenseAmount
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @KhanaId
            , @ExpenseSourceId
            , @InformationStatusCode
            , @AnnualExpenseAmount
            , GETDATE()
            , @AccessedBy
            , GETDATE()
            , @AccessedBy
            )

        SET @ScopeId = SCOPE_IDENTITY();

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to insert.'

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