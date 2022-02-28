/*
Stored Procedure InsertFoodShortageMonth	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Insert Food Shortage Month
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertFoodShortageMonth (
    @KhanaId BIGINT
    , @MonthId BIGINT
    , @InformationStatusCode BIGINT = 1
    , @ScopeId BIGINT = NULL OUTPUT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        INSERT INTO dbo.FoodShortageMonths (
            KhanaId
            , MonthId
            , InformationStatusCode
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @KhanaId
            , @MonthId
            , @InformationStatusCode
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
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
