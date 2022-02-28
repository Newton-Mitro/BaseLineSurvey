CREATE TABLE [dbo].[CooperativeQuestions]
(
	QuestionId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, QuestionText NVARCHAR(500)
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
