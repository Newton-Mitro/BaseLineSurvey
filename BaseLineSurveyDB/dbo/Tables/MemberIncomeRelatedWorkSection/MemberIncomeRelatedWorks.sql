CREATE TABLE dbo.MemberIncomeRelatedWorks
(
	MemberIncomeRelatedWorkId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, KhanaId BIGINT NOT NULL
	, MemberId BIGINT NOT NULL
	, IncomeRelatedWorkId BIGINT NOT NULL
	, InformationStatusCode BIGINT NOT NULL
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
	, CONSTRAINT [FK_MemberRiskProfessions_ToMembers] FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT [FK_MemberRiskProfessions_ToKhanas] FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT [FK_MemberRiskProfessions_ToProfessions] FOREIGN KEY (IncomeRelatedWorkId) REFERENCES Professions(ProfessionCode)
)
