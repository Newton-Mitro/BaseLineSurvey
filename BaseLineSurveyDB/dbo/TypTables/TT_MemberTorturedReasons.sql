CREATE TYPE dbo.TT_MemberTorturedReasons AS TABLE (
    MemberTorturedReasonId BIGINT NULL
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , TorturedReasonCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
