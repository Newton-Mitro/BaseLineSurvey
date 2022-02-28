CREATE TYPE dbo.TT_MemberIncomeRelatedWorks AS TABLE (
    MemberIncomeRelatedWorkId BIGINT NULL
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , IncomeRelatedWorkId BIGINT NOT NULL
    , InformationStatusCode BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
