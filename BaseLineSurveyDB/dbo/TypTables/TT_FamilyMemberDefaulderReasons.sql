CREATE TYPE dbo.TT_FamilyMemberDefaulderReasons AS TABLE
(
	FamilyMemberDefaulderReasonId BIGINT NULL 
    , KhanaId BIGINT NOT NULL
    , DefaulderReasonId BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
