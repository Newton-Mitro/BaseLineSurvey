CREATE TABLE dbo.FamilyFishFarmings
(
	FamilyFishFarmingId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL UNIQUE
    , RelatedWithFishFarming BIT NOT NULL DEFAULT 0
    , NumberOfWaterLands INT NULL DEFAULT 0
    , AreaOfWaterLands FLOAT NULL DEFAULT 0
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
