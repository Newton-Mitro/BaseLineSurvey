/*
Stored Procedure SelectFamilyTreeAssetByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 02 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 02 February 2022
Script Description            : This procedure will Select Family Tree Asset By Khana Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyFarmingLandByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FarmingLands.* 
        , LandOwnershipTypes.LandOwnershipTypeName
        , CropTypes.CropTypeName
        FROM dbo.FarmingLands
        LEFT JOIN LandOwnershipTypes
        ON FarmingLands.LandOwnershipTypeId = LandOwnershipTypes.LandOwnershipTypeId
        LEFT JOIN dbo.CropTypes
        ON FarmingLands.CropTypeId = CropTypes.CropTypeId
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

