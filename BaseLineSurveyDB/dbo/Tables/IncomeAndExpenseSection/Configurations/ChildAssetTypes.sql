/*
Table Name ChildAssetTypes		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Child Asset Types table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ChildAssetTypes (
    ChildAssetTypeId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , ParentAssetId BIGINT NOT NULL
    , ChildAssetName NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ChildAssetTypes_ParentAssetTypes FOREIGN KEY (ParentAssetId) REFERENCES ParentAssetTypes(ParentAssetTypeId)
    )
