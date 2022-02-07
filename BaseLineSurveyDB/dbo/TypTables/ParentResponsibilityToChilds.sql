CREATE TYPE [dbo].ParentResponsibilityToChilds AS TABLE
(
	 ParentsResponsibilityToChildId BIGINT NULL 
    , ParentResponsibilityQuestionId BIGINT NOT NULL
    , ParentResponsibilityOptionId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , AnswerGivenById BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
)
