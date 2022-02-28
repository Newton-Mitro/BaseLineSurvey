/*
Stored Procedure SelectSchoolDropOutInfosByKhanaId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Select School Drop Out Infos By Khana Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectSchoolDropOutInfosByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT SchoolDropouts.*
            , DropOutReasons.DropOutReasonText
            , Members.MemberName
            , InformationStatuses.InformationStatusName
        FROM dbo.SchoolDropouts
        LEFT JOIN dbo.DropOutReasons
            ON SchoolDropouts.DropOutReasonCode = DropOutReasons.DropOutReasonCode
        LEFT JOIN dbo.Members
            ON SchoolDropouts.MemberId = Members.MemberId
        LEFT JOIN dbo.InformationStatuses
            ON SchoolDropouts.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE SchoolDropouts.KhanaId = @KhanaId

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
