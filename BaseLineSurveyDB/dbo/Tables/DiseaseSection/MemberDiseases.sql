/*
Table Name MemberDiseases		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Member Diseases table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberDiseases (
    MemberDiseasId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , DiseaseCode BIGINT NOT NULL
    , TreatmentCentercode BIGINT NOT NULL
    , DoctorTypeCode BIGINT NOT NULL
    , FirstTreatmentFrom BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , IfCovid_NumberOfDose INT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_MemberDiseases_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberDiseases_Diseases FOREIGN KEY (DiseaseCode) REFERENCES Diseases(DiseaseCode)
    , CONSTRAINT FK_MemberDiseases_TreatmentCenters FOREIGN KEY (TreatmentCentercode) REFERENCES TreatmentCenters(TreatmentCentercode)
    , CONSTRAINT FK_MemberDiseases_DoctorTypes FOREIGN KEY (DoctorTypeCode) REFERENCES DoctorTypes(DoctorTypeCode)
    , CONSTRAINT FK_MemberDiseases_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode), 
    CONSTRAINT [FK_MemberDiseases_ToKhanas] FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    )
