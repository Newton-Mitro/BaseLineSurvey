/*
Table Name FamilyIncomes		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Family Incomes table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FamilyIncomes (
    FamilyIncomeId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , IncomeSourceId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , AnnualIncomeAmount MONEY NULL
    , ProductionCost MONEY NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FamilyIncomes_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FamilyIncomes_IncomeSources FOREIGN KEY (IncomeSourceId) REFERENCES IncomeSources(IncomeSourceId)
    , CONSTRAINT FK_FamilyIncomes_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
