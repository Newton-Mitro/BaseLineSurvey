/*
Stored Procedure SelectEductionHelpInfoByKhanaId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Select Eduction Help Info By Khana Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectEductionHelpInfoByKhanaId (
    @KhanaId BIGINT 
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT MemberEducationHelps.*
        , HelpingOrganizations.HelpingOrganizationName
        , EducationHelpTypes.HelpTypeName
        , Members.MemberName
        FROM dbo.MemberEducationHelps
        LEFT JOIN dbo.EducationHelpTypes
        ON MemberEducationHelps.EducationHelpTypeCode = EducationHelpTypes.EducationHelpTypeCode
        LEFT JOIN dbo.HelpingOrganizations
        ON MemberEducationHelps.HelpOrganizationCode = HelpingOrganizations.HelpingOrganizationCode
        LEFT JOIN dbo.Members
        ON MemberEducationHelps.MemberId = Members.MemberId
        WHERE MemberEducationHelps.KhanaId = @KhanaId

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

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