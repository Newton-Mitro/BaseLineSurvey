/*
Table Name VitaminKnowledgeOptions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Vitamin Knowledge Options table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.VitaminKnowledgeOptions (
    VitaminKnowledgeOptionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , QuestionsId BIGINT NOT NULL
    , OptionText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_VitaminKnowledgeOptions_VitaminKnowledgeQuestions FOREIGN KEY (QuestionsId) REFERENCES VitaminKnowledgeQuestions(VitaminKnowledgeQuestionId)
    )
