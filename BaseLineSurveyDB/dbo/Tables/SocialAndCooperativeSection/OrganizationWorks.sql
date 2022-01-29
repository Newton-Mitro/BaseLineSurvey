/*
Table Name ChildWellfairWorks		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 23 January 2022
Script Description            : This procedure will create Child Well fair Works table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.OrganizationWorks (
    OrganizationWorkId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , SocialOrganizationId BIGINT NOT NULL
    , [InformationStatusCode] BIGINT NOT NULL
    , SocialWorkTypeId BIGINT NOT NULL
    , WorkDescription NVARCHAR(250) NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_OrganizationWorks_SocialOrganizations FOREIGN KEY (SocialOrganizationId) REFERENCES SocialOrganizations(SocialOrganizationId)
    , CONSTRAINT [FK_OrganizationWorks_InformationStatuses] FOREIGN KEY ([InformationStatusCode]) REFERENCES [InformationStatuses]([InformationStatusCode])
    , CONSTRAINT [FK_OrganizationWorks_SocialWorkTypes] FOREIGN KEY (SocialWorkTypeId) REFERENCES [SocialWorkTypes](SocialWorkTypeId)
    )
