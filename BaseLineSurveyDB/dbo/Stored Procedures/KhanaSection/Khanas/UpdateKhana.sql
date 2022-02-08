/*
Stored Procedure UpdateKhana	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 10 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 10 February 2022
Script Description            : This procedure will Update Khana
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.UpdateKhana (
    @KhanaId BIGINT
    , @DistrictId BIGINT
    , @UpazilaId BIGINT
    , @ParishId BIGINT
    , @ServiceCenterId BIGINT
    , @VillageId BIGINT
    , @ReligionId BIGINT
    , @RaceId BIGINT
    , @InformationStatusCode BIGINT
    , @HouseReference VARCHAR(255)
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        UPDATE dbo.Khanas
        SET DistrictId = @DistrictId
            , UpazilaId = @UpazilaId
            , ParishId = @ParishId
            , ServiceCenterId = @ServiceCenterId
            , VillageId = @VillageId
            , ReligionId = @ReligionId
            , RaceId = @RaceId
            , InformationStatusCode = @InformationStatusCode
            , HouseReference = @HouseReference
            , CreatedBy = @AccessedBy
            , UpdatedBy = @AccessedBy
            , CreatedAt = GETDATE()
            , UpdatedAt = GETDATE()
        WHERE KhanaId = @KhanaId;


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

