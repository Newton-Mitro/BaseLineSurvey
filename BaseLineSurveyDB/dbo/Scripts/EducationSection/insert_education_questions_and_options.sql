/*
Script to insert EducationQuestions and options
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This Script will Insert EducationQuestions and options
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM dbo.EducationQuestions
        )
BEGIN
    DECLARE @ScopeId AS BIGINT;

    EXEC dbo.InsertEducationQuestion N'আপনার পরিবারের ৬ বছরের নীচে কোন শিশু কি ইসিডি/প্রি-স্কুলে পড়ছে?' -- Question Text
        , @ScopeId OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'হ্যাঁ' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'না' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationQuestion N'আপনার পরিবারের কোন সদস্য বয়স্ক  শিক্ষা কোর্স সম্পন্ন করেছে?' -- Question Text
        , @ScopeId OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'হ্যাঁ' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'না' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationQuestion N'নিজের নাম/ স্বাক্ষও দিতে পেরেছে?' -- Question Text
        , @ScopeId OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'স¤পূর্ণ পেরেছে ও ভালভাবে পেরেছে' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'আংশিক ভাবে পেরেছে' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'মোটেই পারেনি' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationQuestion N'(আমার সোনার বাংলা) পড়তে পেরেছে?' -- Question Text
        , @ScopeId OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'স¤পূর্ণ পেরেছে ও ভালভাবে পেরেছে' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'আংশিক ভাবে পেরেছে' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'মোটেই পারেনি' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationQuestion N'অংক সঠিক?' -- Question Text
        , @ScopeId OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'সঠিক' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC dbo.InsertEducationOption @ScopeId
        , N'সঠিক না' -- Option Text
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
