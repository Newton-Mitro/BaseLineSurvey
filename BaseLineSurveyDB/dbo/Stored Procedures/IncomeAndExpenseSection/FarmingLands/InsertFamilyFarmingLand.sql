/*
Stored Procedure InsertFamilyFarmingLand	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Insert Family Farming Land
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertFamilyFarmingLand (
    @LandOwnershipTypeId BIGINT
    , @CropTypeId BIGINT
    , @LandAmount DECIMAL
    , @CropAmount DECIMAL
    , @KhanaId BIGINT
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
        INSERT INTO dbo.FarmingLands (
            LandOwnershipTypeId
            , CropTypeId
            , KhanaId
            , LandAmount
            , CropAmount
            , InformationStatusCode
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @LandOwnershipTypeId
            , @CropTypeId
            , @KhanaId
            , @LandAmount
            , @CropAmount
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
