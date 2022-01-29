/*
Table Name MemberEducationHelps		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Member Education Helps table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberEducationHelps (
    MemberEducationHelpId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , MemberId BIGINT NOT NULL
    , HelpOrganizationCode BIGINT NOT NULL
    , EducationHelpTypeCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_MemberEducationHelps_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberEducationHelps_HelpingOrganizations FOREIGN KEY (HelpOrganizationCode) REFERENCES HelpingOrganizations(HelpingOrganizationCode)
    , CONSTRAINT FK_MemberEducationHelps_EducationHelpTypes FOREIGN KEY (EducationHelpTypeCode) REFERENCES EducationHelpTypes(EducationHelpTypeCode)
    , CONSTRAINT FK_MemberEducationHelps_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
