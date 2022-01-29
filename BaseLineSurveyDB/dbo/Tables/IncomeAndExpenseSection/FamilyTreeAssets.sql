/*
Table Name FamilyTreeAssets		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Family Tree Assets table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FamilyTreeAssets (
    FamilyTreeAssetId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , TreeId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , NumberOfTrees INT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FamilyTrees_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FamilyTrees_TreeId FOREIGN KEY (TreeId) REFERENCES Trees(TreeId)
    , CONSTRAINT FK_FamilyTreeAssets_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
