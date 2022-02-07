/*
Table Name ParentsResponsibilityToChilds		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Parents Responsibility To Childs table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ParentsResponsibilityToChilds (
    ParentsResponsibilityToChildId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , ParentResponsibilityQuestionId BIGINT NOT NULL
    , ParentResponsibilityOptionId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , AnswerGivenById BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ParentsResponsibilityToChilds_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_PerResponseQuestions FOREIGN KEY (ParentResponsibilityQuestionId) REFERENCES ParentResponsibilityQuestions(ParentResponsibilityQuestionId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_PerResponseOptions FOREIGN KEY (ParentResponsibilityOptionId) REFERENCES ParentResponsibilityOptions(ParentResponsibilityOptionId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_Members FOREIGN KEY (AnswerGivenById) REFERENCES Members(MemberId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
