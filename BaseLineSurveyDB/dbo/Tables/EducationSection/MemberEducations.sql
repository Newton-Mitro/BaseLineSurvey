/*
Table Name MemberEducations		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Member Educations table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberEducations (
    MemberEducationId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NULL
    , MemberId BIGINT NULL
    , EducationalStatusCode BIGINT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL 
    , CONSTRAINT FK_MemberEducations_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberEducations_EducationalStatuses FOREIGN KEY (EducationalStatusCode) REFERENCES EducationalStatuses(EducationalStatusCode)
    , CONSTRAINT FK_MemberEducations_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
