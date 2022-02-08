CREATE TABLE [dbo].[EducationQuestions]
(
	EducationQuestionId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, QuestionText NVARCHAR(255)
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
