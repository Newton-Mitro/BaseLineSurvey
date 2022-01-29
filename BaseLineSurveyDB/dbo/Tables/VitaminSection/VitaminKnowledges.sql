/*
Table Name VitaminKnowledges		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Vitamin Knowledges table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.VitaminKnowledges (
    VitaminKnowledgeId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , QustionId BIGINT NOT NULL
    , OptionId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_VitaminKnowledges_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_VitaminKnowledges_VitaminKnowledgeQuestions FOREIGN KEY (QustionId) REFERENCES VitaminKnowledgeQuestions(QuestionId)
    , CONSTRAINT FK_VitaminKnowledges_VitaminKnowledgeOptions FOREIGN KEY (OptionId) REFERENCES VitaminKnowledgeOptions(OptionId)
    , CONSTRAINT FK_VitaminKnowledges_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
