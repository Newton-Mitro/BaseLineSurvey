CREATE TABLE [dbo].[SleepingPlaces] (
    [SleepingPlaceId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [SleepingPlaceText] NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
