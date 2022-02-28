CREATE TYPE [dbo].[ChildRightInfos] AS TABLE (
    ChildRightId BIGINT NULL
    , ChildRightQuestionId BIGINT NOT NULL
    , ChildRightOptionId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , AnswerGivenById BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
