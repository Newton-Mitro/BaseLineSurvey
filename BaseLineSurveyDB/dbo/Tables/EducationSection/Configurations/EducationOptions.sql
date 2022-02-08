CREATE TABLE dbo.EducationOptions
(
	EducationOptionId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, EducationQuestionId BIGINT NULL
	, OptionText NVARCHAR(255)
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL, 
    CONSTRAINT [FK_EducationOptions_ToEducationQuestions] FOREIGN KEY (EducationQuestionId) REFERENCES EducationQuestions(EducationQuestionId)
)
