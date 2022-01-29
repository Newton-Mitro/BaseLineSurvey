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
DECLARE @ParResQuestionId AS BIGINT;

IF NOT EXISTS (
        SELECT *
        FROM ParResponseQuestions
        )
BEGIN
    EXEC InsertParResponseQuestion N'আপনি কি শিশুদের প্রতি অভিভাবকের দায়িত্ব সম্পর্কে কিছু বলতে পারেন?' --@QuestionName NVARCHAR(250)
        , @ParResQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'খাদ্য' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'আশ্রয়' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'কাপড়-চোপর' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'শিক্ষার ' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'ঝুঁকিপূর্ণ কাজ না করার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'নিজের প্রয়োজন সম্পর্কে শুনা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'পারিবারিক আদর যত্ন' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'কোন কিছুুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParResponseQuestion N'আপনি কি শিশুর অধিকার সম্পর্কে কিছু জানেন?' --@QuestionName NVARCHAR(250)
        , @ParResQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'বেঁচে থাকার অধিকার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'সুরক্ষার অধিকার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'বিকাশের অধিকার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'অংশগ্রহণের অধিকার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'শিক্ষার  অধিকার' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'কোন অধিকার সম্পর্র্কেই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParResponseQuestion N'আপনাদের পারিবারিক বিষয়ে মতামত, মূল্যায়ন কিংবা সিন্ধান্ত গ্রহনের ক্ষেত্রে  শিশুদের মতামত নেন কিনা?' --@QuestionName NVARCHAR(250)
        , @ParResQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'শিক্ষ' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'স্বাধীন ভাবে চলাচল' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'বিনোদন' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'খাদ্য গ্রহণ' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'পোশাক/কাপড়-চোপড় কেনা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'স্বাস্থ্যের যত্ন' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'পরিবারের কোন সদস্যের বিয়ে' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'পরিবার পর্যায়ের কোন সামাজিক অনুষ্ঠান' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'জমা-জমি ক্রয়/বিক্রয়/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'ঘর-বাড়ী তৈরী/সংস্কার/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'পোশাক ক্রয়/তেরী' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'শিক্ষা প্রতিষ্ঠানে ভর্তি/এ-সংক্রান্ত' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'সাস্কৃতিক কর্মকান্ডে অংশগ্রহন' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'কোন কিছুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParResponseQuestion N'আপনি কি শিশু নিরাপত্তা নীতি  সম্পর্কে জানেন ?' --@QuestionName NVARCHAR(250)
        , @ParResQuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'শিশুদের ঝুঁকিপূর্ণ কাজ থেকে বিরত রাখা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParentResponseOption N'শিশু পাচার রোধ করা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'শিশুদের শিক্ষা নিশ্চিত করা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'সামাজিক নিরাপত্তা দেয়া' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'প্রতিটি শিশুর জন্ম নিবন্ধন থাকা' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentResponseOption N'কোন কিছুই বলতে পারেন নি অন্যান্য' --@OptionName NVARCHAR(250)
        , @ParResQuestionId --@ParResQuestionId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
