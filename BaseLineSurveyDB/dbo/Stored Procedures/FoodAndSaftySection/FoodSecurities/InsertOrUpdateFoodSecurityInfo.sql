/*
Stored Procedure InsertOrUpdateFoodSecurityInfo	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Insert Or Update Food Security Info
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateFoodSecurityInfo (
    @FoodSecuritieId BIGINT
    , @KhanaId BIGINT
    , @NumberOfMealYeasterday INT
    , @DontEatOrHalfEat INT
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
        IF (@FoodSecuritieId > 0)
        BEGIN
            UPDATE dbo.FoodSecurities
            SET KhanaId = @KhanaId
              ,InformationStatusCode = @InformationStatusCode
              ,NumberOfMealYeasterday = @NumberOfMealYeasterday
              ,DontEatOrHalfEat = @DontEatOrHalfEat
              ,UpdatedBy = @AccessedBy
              ,UpdatedAt = GETDATE()
            WHERE FoodSecuritieId = @FoodSecuritieId;
        END
        ELSE
        BEGIN
            INSERT INTO dbo.FoodSecurities(
            KhanaId
            , NumberOfMealYeasterday
            , DontEatOrHalfEat
            , InformationStatusCode
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
            VALUES (
            @KhanaId
            , @NumberOfMealYeasterday
            , @DontEatOrHalfEat
            , @InformationStatusCode
            , GETDATE()
            , @AccessedBy
            , GETDATE()
            , @AccessedBy
            )
            SET @ScopeId = SCOPE_IDENTITY();
        END

        

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
