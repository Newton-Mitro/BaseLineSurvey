/*
Table Name MemberIncomeRelatedProfessions		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will create MemberIncomeRelatedProfessions
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberIncomeRelatedProfessions (
    MemberIncomeRelatedProfessionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , MemberId BIGINT NOT NULL
    , ProfessionCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_MemberRiskProfessions_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberRiskProfessions_Professions FOREIGN KEY (ProfessionCode) REFERENCES Professions(ProfessionCode)
    , CONSTRAINT [FK_MemberRiskProfessions_InformationStatuses] FOREIGN KEY ([InformationStatusCode]) REFERENCES [InformationStatuses]([InformationStatusCode])
    )
