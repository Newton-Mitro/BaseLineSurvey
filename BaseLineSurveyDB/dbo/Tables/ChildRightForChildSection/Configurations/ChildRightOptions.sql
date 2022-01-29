/*
Table Name ChildRightOptions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Child Right Options table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ChildRightOptions (
    ChildRightOptionId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , ChildRightQuestionId BIGINT NOT NULL
    , OptionText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ChildRightOptions_ChildRightQuestions FOREIGN KEY (ChildRightQuestionId) REFERENCES ChildRightQuestions(ChildRightQuestionId)
    )
