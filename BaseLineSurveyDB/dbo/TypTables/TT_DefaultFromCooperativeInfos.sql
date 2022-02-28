CREATE TYPE dbo.TT_DefaultFromCooperativeInfos AS TABLE
(
	 CooperativeInfoId BIGINT NULL 
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NULL
    , CooperativeId BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
