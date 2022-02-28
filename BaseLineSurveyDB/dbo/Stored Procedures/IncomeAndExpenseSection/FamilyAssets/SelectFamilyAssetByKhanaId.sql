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
            , InformationStatuses.InformationStatusName
        FROM dbo.FamilyAssets
        LEFT JOIN ChildAssetTypes
            ON FamilyAssets.ChildAssetId = ChildAssetTypes.ChildAssetTypeId
        LEFT JOIN ParentAssetTypes
            ON FamilyAssets.ParentAssetId = ParentAssetTypes.ParentAssetTypeId
        LEFT JOIN dbo.InformationStatuses
            ON FamilyAssets.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId;

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
