/*
Table Name FamilyAssets		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Family Assets table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FamilyAssets (
    FamilyAssetId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , ParentAssetId BIGINT NOT NULL
    , ChildAssetId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , Quantity INT NULL
    , CurrentSaleValue INT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FamilyAssets_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FamilyAssets_ChildAssets FOREIGN KEY (ChildAssetId) REFERENCES ChildAssetTypes(ChildAssetTypeId)
    , CONSTRAINT FK_FamilyAssets_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
