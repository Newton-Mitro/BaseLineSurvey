/*
Table Name MemberEducations		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will create Member Educations table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberEducations (
    MemberEducationId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , EducationQuestionId BIGINT NOT NULL
    , EducationOptionId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL 
    , CONSTRAINT FK_MemberEducations_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberEducations_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
