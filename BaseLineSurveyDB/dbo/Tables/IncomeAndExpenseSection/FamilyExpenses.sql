/*
Table Name FamilyExpenses		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Family Expenses table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FamilyExpenses (
    FamilyExpenseId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , ExpenseSourceId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , AnnualExpenseAmount INT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FamilyExpenses_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FamilyExpenses_ExpenseSources FOREIGN KEY (ExpenseSourceId) REFERENCES ExpenseSources(ExpenseSourceId)
    , CONSTRAINT FK_FamilyExpenses_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
