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
    , ParResQuestionId BIGINT NOT NULL
    , ParResOptionId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , AnswerGivenById BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ParentsResponsibilityToChilds_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_PerResponseQuestions FOREIGN KEY (ParResQuestionId) REFERENCES ParResponseQuestions(ParResQuestionId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_PerResponseOptions FOREIGN KEY (ParResOptionId) REFERENCES ParResponseOptions(PerResponseOptionId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_Members FOREIGN KEY (AnswerGivenById) REFERENCES Members(MemberId)
    , CONSTRAINT FK_ParentsResponsibilityToChilds_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
