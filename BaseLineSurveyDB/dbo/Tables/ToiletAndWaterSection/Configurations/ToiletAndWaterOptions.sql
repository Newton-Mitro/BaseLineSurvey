/*
Table Name ToiletAndWaterOptions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Toilet And Water Options table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ToiletAndWaterOptions (
    ToiletAndWaterOptionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , QuestionsId BIGINT NOT NULL
    , OptionText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ToiletAndWaterOptions_QuestionsId FOREIGN KEY (QuestionsId) REFERENCES ToiletAndWaterQuestions(ToiletAndWaterQuestionId)
    )
