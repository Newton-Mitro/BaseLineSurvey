/*
Stored Procedure SelectFamilyAssetByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 02 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 02 February 2022
Script Description            : This procedure will Select Family Asset By Khana Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyAssetByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FamilyAssets.* 
        , ChildAssetTypes.ChildAssetName
        , ParentAssetTypes.ParentAssetName
        FROM dbo.FamilyAssets
        LEFT JOIN ChildAssetTypes
        ON FamilyAssets.ChildAssetId = ChildAssetTypes.ChildAssetTypeId
        LEFT JOIN ParentAssetTypes
        ON FamilyAssets.ParentAssetId = ParentAssetTypes.ParentAssetTypeId
        WHERE KhanaId = @KhanaId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Recors not found.'

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

