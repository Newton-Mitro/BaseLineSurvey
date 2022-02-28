/*
Stored Procedure InsertFamilyFishFarming	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 27 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 27 February 2022
Script Description            : This procedure will Insert Family Fish Farming
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertFamilyFishFarming (
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
        IF EXISTS ( SELECT * FROM dbo.FamilyFishFarmings
        WHERE KhanaId = @KhanaId)
        BEGIN
            UPDATE dbo.FamilyFishFarmings
            SET KhanaId = @KhanaId
                , RelatedWithFishFarming = @RelatedWithFishFarming
                , NumberOfWaterLands = @NumberOfWaterLands
                , AreaOfWaterLands = @AreaOfWaterLands
                , UpdatedAt = GETDATE()
                , UpdatedBy = @AccessedBy
            WHERE KhanaId = @KhanaId;
            IF @@RowCount > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'Faield to update.'
        END
        ELSE
        BEGIN 
            INSERT INTO dbo.FamilyFishFarmings
            (
                KhanaId
                , RelatedWithFishFarming
                , NumberOfWaterLands
                , AreaOfWaterLands
                , CreatedAt
                , CreatedBy
                , UpdatedAt
                , UpdatedBy
            )
            VALUES 
            (
                @KhanaId
                , @RelatedWithFishFarming
                , @NumberOfWaterLands
                , @AreaOfWaterLands
                , GETDATE()
                , @AccessedBy
                , GETDATE()
                , @AccessedBy
        );

        IF @@RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Faield to insert.'
        END
        

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
