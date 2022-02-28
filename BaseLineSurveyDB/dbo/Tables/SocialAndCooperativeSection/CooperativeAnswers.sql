CREATE TABLE [dbo].CooperativeAnswers
(
	CooperativeAnswerId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , QuestionId BIGINT NOT NULL
    , OptionId BIGINT NOT NULL
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL, 
    CONSTRAINT [FK_CooperativeAnswers_ToCooperativeQuestions] FOREIGN KEY (QuestionId) REFERENCES CooperativeQuestions(QuestionId), 
    CONSTRAINT [FK_CooperativeAnswers_ToCooperativeOptions] FOREIGN KEY (OptionId) REFERENCES CooperativeOptions(OptionId), 
    CONSTRAINT [FK_CooperativeAnswers_ToKhanas] FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
)
