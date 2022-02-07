/*
Table Name MemberRiskProfessions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Member Risk Professions table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.MemberRiskProfessions (
    MemberRiskProfessionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , MemberId BIGINT NOT NULL
    , ProfessionCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , SleepingPlaceId BIGINT NOT NULL
    , TorturedReasonCode BIGINT NOT NULL
    , SleepingPlace NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_MemberRiskProfessions_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_MemberRiskProfessions_Professions FOREIGN KEY (ProfessionCode) REFERENCES Professions(ProfessionCode)
    , CONSTRAINT [FK_MemberRiskProfessions_[SleepingPlaces]]] FOREIGN KEY (SleepingPlaceId) REFERENCES [SleepingPlaces](SleepingPlaceId)
    , CONSTRAINT [FK_MemberRiskProfessions_InformationStatuses] FOREIGN KEY ([InformationStatusCode]) REFERENCES [InformationStatuses]([InformationStatusCode])
    , CONSTRAINT FK_MemberRiskProfessions_TorturedReasions FOREIGN KEY (TorturedReasonCode) REFERENCES TorturedReasions(TorturedRessonCode)
    )
