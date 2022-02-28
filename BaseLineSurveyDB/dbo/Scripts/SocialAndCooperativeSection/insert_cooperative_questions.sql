/*
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 24 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 24 February 2022
Script Description            : This Script will Insert Cooperative Quesions and options
--------------------------------------------------------------------------------------
*/
DECLARE @CoOpQuestionId AS BIGINT;

IF NOT EXISTS (
        SELECT *
        FROM CooperativeQuestions
        )
BEGIN
    EXEC InsertCooperativeQuestion N'আপনি কি কোন ধরণের সমিতির সদস্য?' --@QuestionName NVARCHAR(250)
        , @CoOpQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'হ্যাঁ' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'না' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.



    EXEC InsertCooperativeQuestion N'আপনি/আপনারা কয়টি সমবায় সমিতির সদস্য ?' --@QuestionName NVARCHAR(250)
        , @CoOpQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'১' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'২' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৩' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৪' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৫' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৬' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৭' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৮' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৯' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.




    EXEC InsertCooperativeQuestion N'আপনি/আপনারা কি কোন সমিতি থেকে সমিতি থেকে ঋণ নিয়েেেছন?' --@QuestionName NVARCHAR(250)
        , @CoOpQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'হ্যাঁ' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'না' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.



    EXEC InsertCooperativeQuestion N'আপনি/আপনারা কয়টি সমিতি থেকে ঋণ নিয়েেেছন?' --@QuestionName NVARCHAR(250)
        , @CoOpQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'১' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'২' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৩' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৪' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৫' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৬' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৭' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৮' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeOption N'৯' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.


    EXEC InsertCooperativeQuestion N'আপনার সন্তান/সন্তানদেও উচ্চশিক্ষা ক্ষেত্রে বিশেষ ঋণ প্রয়োজন আছে কি? ' --@QuestionName NVARCHAR(250)
        , @CoOpQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'হ্যাঁ' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertCooperativeOption N'না' --@OptionName NVARCHAR(250)
        , @CoOpQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.


    
END
