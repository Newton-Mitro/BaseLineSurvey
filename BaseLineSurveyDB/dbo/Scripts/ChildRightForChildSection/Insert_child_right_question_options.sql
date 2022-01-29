/*
Script InsertDistrictUpazilaParises
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert District Upazila Parises.
--------------------------------------------------------------------------------------
*/
DECLARE @ChildRightQuestionId AS BIGINT;

IF NOT EXISTS (
        SELECT *
        FROM ChildRightQuestions
        )
BEGIN
    EXEC InsertChildRightQuestion N'তোমার মতে শিশুদের প্রতি অভিভাবকের দায়িত্ব কি তা বলতে পার?' --@QuestionName NVARCHAR(250)
        , @ChildRightQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'খাদ্য' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'আশ্রয়' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'কাপড়-চোপর' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'শিক্ষার ' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'ঝুঁকিপূর্ণ কাজ না করার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'নিজের প্রয়োজন সম্পর্কে শুনা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'পারিবারিক আদর যত্ন' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'কোন কিছুুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightQuestion N'তুমি কি শিশু অধিকার সম্পর্কে কিছু জান?' --@QuestionName NVARCHAR(250)
        , @ChildRightQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'বেঁচে থাকার অধিকার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'সুরক্ষার অধিকার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'বিকাশের অধিকার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'অংশগ্রহণের অধিকার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'শিক্ষার  অধিকার' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'কোন অধিকার সম্পর্র্কেই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightQuestion N'তোমাদের পরিবারিক বিষয়ে সিন্ধান্ত গ্রহনের ক্ষেত্রে স্বাধীনভাবে মতামত দেওয়া/অংশগ্রহন কিংবা মূল্যায়নে সুযোগ পাও কিনা?' --@QuestionName NVARCHAR(250)
        , @ChildRightQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'শিক্ষ' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'স্বাধীন ভাবে চলাচল' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'বিনোদন' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'খাদ্য গ্রহণ' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'পোশাক/কাপড়-চোপড় কেনা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'স্বাস্থ্যের যত্ন' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'পরিবারের কোন সদস্যের বিয়ে' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'পরিবার পর্যায়ের কোন সামাজিক অনুষ্ঠান' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'জমা-জমি ক্রয়/বিক্রয়/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'ঘর-বাড়ী তৈরী/সংস্কার/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'পোশাক ক্রয়/তেরী' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'শিক্ষা প্রতিষ্ঠানে ভর্তি/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'সাস্কৃতিক কর্মকান্ডে অংশগ্রহন' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'কোন কিছুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightQuestion N'তুমি কি শিশু নিরাপত্তা নীতি সম্পর্কে জান?' --@QuestionName NVARCHAR(250)
        , @ChildRightQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'শিশুদের ঝুঁকিপূর্ণ কাজ থেকে বিরত রাখা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildRightOption N'শিশু পাচার রোধ করা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'শিশুদের শিক্ষা নিশ্চিত করা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'সামাজিক নিরাপত্তা দেয়া' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'প্রতিটি শিশুর জন্ম নিবন্ধন থাকা' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildRightOption N'কোন কিছুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ChildRightQuestionId --@ChildRightQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
