CREATE TYPE dbo.TT_MemberSleepingPlaces AS TABLE (
    MemberSleepingPlaceId BIGINT NULL
    , SleepingPlaceId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
