/*
Table Name FarmingLands		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Farming Lands table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.FarmingLands (
    FarmingLandId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , LandOwnershipTypeId BIGINT NOT NULL
    , CropTypeId BIGINT NOT NULL
    , LandAmount DECIMAL NOT NULL
    , CropAmount DECIMAL NOT NULL
    , KhanaId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_FarmingLands_LandOwnershipTypes FOREIGN KEY (LandOwnershipTypeId) REFERENCES LandOwnershipTypes(LandOwnershipTypeId)
    , CONSTRAINT FK_FarmingLands_CropTypes FOREIGN KEY (CropTypeId) REFERENCES CropTypes(CropTypeId)
    , CONSTRAINT FK_FarmingLands_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_FarmingLands_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
