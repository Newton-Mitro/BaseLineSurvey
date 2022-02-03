/*
Script InsertProfession
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 December 2022
Script Description            : This Script will Insert Profession.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM Professions
        )
BEGIN
    EXEC InsertProfession N'কৃষি কাজ' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'দিনমজুর (কৃষি)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'দিনমজুর (অকৃষি)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'জেলে' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'রিক্সা/ ভ্যান/ ঠেলাগাড়ী চালক' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'যান্ত্রিক/ পরিবহন শ্রমিক (বাস, ট্রাক, টেম্পু ড্রাইভার, হেল্পার)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'কুটির শিল্প (স্বনিয়োজিত)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'কুটির শিল্প (শ্রমিক)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'ক্ষুদ্র ব্যবসা (চা স্কল, হকার, কাঁচামালের ব্যবসা, ফার্নিচার দোকান ইত্যাদি)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'স্বনিয়োজিত কাজ (সেলুন, স্বর্ণকার, কাঠমিস্ত্রি, রাজমিস্ত্রি, অটো রিক্সা গ্যারেজের মালিক)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --upto 10
    EXEC InsertProfession N'হাঁস-মুরগী/ গরু-ছাগল পালন করে, ডিম, দুধ বিক্রি' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'বেসরকারী চাকুরী' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'সরকারী চাকুরী' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'গৃহীনী' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'ছাত্র/ ছাত্রী' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'পেনশনভোগী/ অবসরপ্রাপ্ত' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'ওঝা/ কবিরাজ' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'ভিক্ষাবৃত্তি' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'কর্মক্ষম  নয়' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertProfession N'বেকার' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertProfession N'দারোয়ান, বাবুর্চি, আয়া, বুয়া, ঝি, ইত্যাদি' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'শিশু শ্রমিক (চা-দোকানে থাকে, দোকান কর্মচারী, গ্যারেজ শ্রকিম, ওয়ার্কশপ শ্রমিক, বাসার কাজের লোক ইত্যাদি)' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'হরিজন' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'সেলাই, হাতের কাজ, হস্ত শিল্প, কারিগর' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'ব্যবসা' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'প্রযোজ্য নয়' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'রাজ/কাঠ মিস্ত্রি' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'ওয়েলর্ডিং/মটর শ্রমিক' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'হোটেল/চায়ের দোকান' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'ইট/পাথর ভাঙ্গা' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'অণ্যান্য' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertProfession N'প্রযোজ্য নয়' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
