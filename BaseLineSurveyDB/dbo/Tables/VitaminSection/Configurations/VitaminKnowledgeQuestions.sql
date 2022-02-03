/*
Table Name VitaminKnowledgeQuestions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Vitamin Knowledge Questions table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.VitaminKnowledgeQuestions (
    VitaminKnowledgeQuestionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , QuestionText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
