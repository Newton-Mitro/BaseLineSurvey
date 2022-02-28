/*
Stored Procedure InsertFamilyAsset	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 06 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 06 February 2022
Script Description            : This procedure will Insert Family Asset
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertFamilyAsset (
    @KhanaId BIGINT
    , @ParentAssetId BIGINT
    , @ChildAssetId BIGINT
    , @Quantity INT
    , @CurrentSaleValue DECIMAL
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
        INSERT INTO dbo.FamilyAssets (
            KhanaId
            , ParentAssetId
            , ChildAssetId
            , Quantity
            , CurrentSaleValue
            , InformationStatusCode
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @KhanaId
            , @ParentAssetId
            , @ChildAssetId
            , @Quantity
            , @CurrentSaleValue
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
