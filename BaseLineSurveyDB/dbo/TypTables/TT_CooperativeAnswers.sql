CREATE TYPE [dbo].TT_CooperativeAnswers AS TABLE
(
	CooperativeAnswerId BIGINT NULL 
    , KhanaId BIGINT NOT NULL
    , QuestionId BIGINT NOT NULL
    , OptionId BIGINT NOT NULL
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
