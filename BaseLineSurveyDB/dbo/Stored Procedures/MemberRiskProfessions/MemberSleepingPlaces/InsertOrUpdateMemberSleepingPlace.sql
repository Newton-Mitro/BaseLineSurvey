/*
Stored Procedure InsertOrUpdateMemberSleepingPlace	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will Insert Or Update Member Sleeping Place
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateMemberSleepingPlace (
    @MemberSleepingPlaceId BIGINT 
    , @SleepingPlaceId BIGINT 
    , @KhanaId BIGINT 
    , @InformationStatusCode BIGINT 
    , @MemberId BIGINT 
    , @AccessedBy BIGINT 
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
       IF(@MemberSleepingPlaceId>0)
       BEGIN
            UPDATE dbo.MemberSleepingPlaces
            SET SleepingPlaceId = @SleepingPlaceId
            , KhanaId = @KhanaId
            , MemberId = @MemberId
            , InformationStatusCode = @InformationStatusCode
            WHERE MemberSleepingPlaceId = @MemberSleepingPlaceId;

            IF @@ROWCOUNT > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'Faield to update.'
       END
       ELSE
       BEGIN
            INSERT INTO dbo.MemberSleepingPlaces (
            MemberId
            , KhanaId
            , SleepingPlaceId
            , InformationStatusCode
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy )
            VALUES (
            @MemberId
            , @KhanaId
            , @SleepingPlaceId
            , @InformationStatusCode
            , GETDATE()
            , @AccessedBy
            , GETDATE()
            , @AccessedBy
            )
            IF @@ROWCOUNT > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'Faield to insert.'
       END
        

        --End Main Block
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
