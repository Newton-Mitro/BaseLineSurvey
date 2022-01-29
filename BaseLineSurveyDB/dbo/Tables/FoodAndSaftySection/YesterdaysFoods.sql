/*
Table Name YesterdaysFoods		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Yesterdays Foods table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.YesterdaysFoods (
    YesterdaysFoodIdId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , FoodId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_YesterdaysFoods_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_YesterdaysFoods_Foods FOREIGN KEY (FoodId) REFERENCES Foods(FoodId)
    , CONSTRAINT FK_YesterdaysFoods_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
