/*
Stored Procedure SelectMemberSleepingPlacesByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will Select Member Sleeping Places By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberSleepingPlacesByKhanaId (
    @KhanaId BIGINT 
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT MemberSleepingPlaces.* 
        , Members.MemberName
        , SleepingPlaces.SleepingPlaceText
        , InformationStatuses.InformationStatusName
        FROM dbo.MemberSleepingPlaces
        LEFT JOIN Members
        ON MemberSleepingPlaces.MemberId = Members.MemberId
        LEFT JOIN SleepingPlaces
        ON MemberSleepingPlaces.SleepingPlaceId = SleepingPlaces.SleepingPlaceId
        LEFT JOIN InformationStatuses
        ON MemberSleepingPlaces.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE MemberSleepingPlaces.KhanaId = @KhanaId;

            IF @@ROWCOUNT > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'No entry found.'
        

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
