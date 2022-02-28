/*
Table Name SocialOrganizations		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Social Organizations table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.SocialOrganizations (
    SocialOrganizationId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , VillageId BIGINT NOT NULL
    , OrganizationName NVARCHAR(250) NOT NULL
    , WorkForChildern BIT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_SocialOrganizations_Villages FOREIGN KEY (VillageId) REFERENCES Villages(VillageId)
    , CONSTRAINT FK_SocialOrganizations_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
