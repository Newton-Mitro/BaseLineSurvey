/*
Table Name Members		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Members table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Members (
    MemberId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , MemberName NVARCHAR(250) NOT NULL
    , RelationWithFamilyHeadId BIGINT NOT NULL
    , GenderCode BIGINT NOT NULL
    , FirstProfessionCode BIGINT NOT NULL
    , SecondProfessionCode BIGINT NULL
    , IncomeRelatedWork BIGINT NULL
    , EducationalStatusCode BIGINT NULL
    , CurrentlyStudying BIT NULL
    , MaritalStatusCode BIGINT NOT NULL
    , DisabledTypeCode BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , DateOfBirth DATETIME2 NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL 
    , CONSTRAINT FK_Members_Relationships FOREIGN KEY (RelationWithFamilyHeadId) REFERENCES Relationships(RelationshipCode)
    , CONSTRAINT FK_Members_Genders FOREIGN KEY (GenderCode) REFERENCES Genders(GerderCode)
    , CONSTRAINT FK_Members_Professions FOREIGN KEY (FirstProfessionCode) REFERENCES Professions(ProfessionCode)
    , CONSTRAINT FK_Members_Professions2 FOREIGN KEY (SecondProfessionCode) REFERENCES Professions(ProfessionCode)
    , CONSTRAINT FK_Members_Professions3 FOREIGN KEY (IncomeRelatedWork) REFERENCES Professions(ProfessionCode)
    , CONSTRAINT FK_Members_MaritalStatuses FOREIGN KEY (MaritalStatusCode) REFERENCES MaritalStatuses(MaritalStatusCode)
    , CONSTRAINT FK_Members_DisabaledTypes FOREIGN KEY (DisabledTypeCode) REFERENCES DisabaledTypes(DisabledTypeCode)
    , CONSTRAINT FK_Members_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_Members_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
