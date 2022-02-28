/*
Stored Procedure UpdateFamilyFishFarming	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 27 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 27 February 2022
Script Description            : This procedure will Update Family Fish Farming
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.UpdateFamilyFishFarming (
    @FamilyFishFarmingId BIGINT = 0
    , @KhanaId BIGINT 
    , @RelatedWithFishFarming BIT = 0 
    , @NumberOfWaterLands INT = 0
    , @AreaOfWaterLands FLOAT = 0
    , @AccessedBy BIGINT = NULL
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point
    BEGIN TRY
        --Start Main Block
        UPDATE dbo.FamilyFishFarmings
        SET
            KhanaId = @KhanaId
            , RelatedWithFishFarming = @RelatedWithFishFarming
            , NumberOfWaterLands = @NumberOfWaterLands
            , AreaOfWaterLands = @AreaOfWaterLands
            , UpdatedAt = GETDATE()
            , UpdatedBy = @AccessedBy
        WHERE FamilyFishFarmingId = @FamilyFishFarmingId;

        IF @@RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Faield to update.'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;

