CREATE TABLE dbo.InformationStatuses (
    InformationStatusCode BIGINT NOT NULL PRIMARY KEY IDENTITY
    , InformationStatusName NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
