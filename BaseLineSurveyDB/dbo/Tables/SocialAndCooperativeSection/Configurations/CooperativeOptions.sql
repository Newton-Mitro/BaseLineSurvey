CREATE TABLE [dbo].[CooperativeOptions]
(
	OptionId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, QuestionId BIGINT NOT NULL
	, OptionText NVARCHAR(255) NOT NULL
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
