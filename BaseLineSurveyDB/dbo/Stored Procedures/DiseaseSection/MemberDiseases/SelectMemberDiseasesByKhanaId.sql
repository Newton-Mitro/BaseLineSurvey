/*
Stored Procedure SelectMemberDiseasesByKhanaId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 25 January 2022
Script Description            : This procedure will Select Member Diseases By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberDiseasesByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT MemberDiseases.*
            , Diseases.DiseaseName
            , TreatmentCenters.TreatmentCenterName
            , FirstTreatmentCenters.TreatmentCenterName AS FirstTreatmentCenterName
            , DoctorTypes.DoctorTypeName
            , Members.MemberName
            , InformationStatuses.InformationStatusName
        FROM dbo.MemberDiseases
        LEFT JOIN dbo.Diseases
            ON MemberDiseases.DiseaseCode = Diseases.DiseaseCode
        LEFT JOIN dbo.TreatmentCenters
            ON MemberDiseases.TreatmentCenterCode = TreatmentCenters.TreatmentCenterCode
        LEFT JOIN dbo.DoctorTypes
            ON MemberDiseases.DoctorTypeCode = DoctorTypes.DoctorTypeCode
        LEFT JOIN dbo.Members
            ON MemberDiseases.MemberId = Members.MemberId
        LEFT JOIN dbo.TreatmentCenters AS FirstTreatmentCenters
            ON MemberDiseases.TreatmentCenterCode = FirstTreatmentCenters.TreatmentCenterCode
        LEFT JOIN dbo.InformationStatuses
            ON MemberDiseases.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE MemberDiseases.KhanaId = @KhanaId  ORDER BY MemberDiseases.MemberDiseasId DESC

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
