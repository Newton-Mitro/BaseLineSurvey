/*
Table Name FoodSecurities		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Food Securities table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FoodSecurities (
    FoodSecuritieId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , NumberOfMealYeasterday INT NOT NULL
    , DontEatOrHalfEat INT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FoodSecurities_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FoodSecurities_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
