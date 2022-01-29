/*
Table Name ChildRights		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Child Rights table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ChildRights (
    ChildRightId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , ChildRightQuestionId BIGINT NOT NULL
    , ChildRightOptionId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , AnswerGivenById BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ChildRights_ChildRightQuestions FOREIGN KEY (ChildRightQuestionId) REFERENCES ChildRightQuestions(ChildRightQuestionId)
    , CONSTRAINT FK_ChildRights_ChildRightOptions FOREIGN KEY (ChildRightOptionId) REFERENCES ChildRightOptions(ChildRightOptionId)
    , CONSTRAINT FK_ChildRights_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_ChildRights_Members FOREIGN KEY (AnswerGivenById) REFERENCES Members(MemberId)
    , CONSTRAINT FK_ChildRights_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
