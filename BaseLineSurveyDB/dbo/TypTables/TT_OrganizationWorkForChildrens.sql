CREATE TYPE dbo.TT_OrganizationWorkForChildrens AS TABLE (
    OrganizationWorkForChildrenId BIGINT NULL
    , VillageId BIGINT NOT NULL
    , SocialWorkTypeId BIGINT NOT NULL
    , InformationStatusCode BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
