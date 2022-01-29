/*
Script InsertVitaminKnowledgeQuestions
--------------------------------------------------------------------------------------
Script By                     : NEWTON MITRO
Created At                    : 13 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 13 January 2022
Script Description            : This Script will Insert Vitamin Knowledge Questions.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT 1
        FROM dbo.VitaminKnowledgeQuestions
        )
BEGIN
    DECLARE @QuestionId AS BIGINT;

    EXEC InsertVitaminKnowledgeQuestions N'শাক্ সব্জির পুষ্টিগুণ/ ভিটামিন বজায় রাখার জন্য আপনি কি করে থাকেন?' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'সব্জি কাটার পূর্বে ধুয়ে নেই' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'সব্জি কাটার পরে ধুয়ে নেই' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'জানি না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'কয়েকটি আয়রণ সমৃদ্ধ সব্জির নাম বলুন (কচু শাক, পালং শাক, কাঁচ কলা, কলার মোচা, ডুমুর ফল, ইত্যাদি)' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'দুই বা ততোধিক সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'একটি সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'ভুল সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'জানি না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'কয়েকটি ভিটামিন—সি সমৃদ্ধ খাদ্যের নাম বলুন (টমেটো, লেবু, আমলকি, পেয়ারা, আমড়া, জাম্বুরা, জলপাই, কামরাঙ্গা, বড়ই, কাচা মরিচ, কড়মচা ইত্যাদি)' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'দুই বা ততোধিক সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'একটি সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'ভুল সব্জির নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'জানি না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'কয়েকটি ভিটামিন —এ সমৃদ্ধ খাদ্যেমর নাম বলুন (মিষ্টি কুমড়া, পাকা পেঁপেঁ, পাকা কাঁঠাল, গাজর ইত্যাদি)' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'দুই বা ততোধিক নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'একটি নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'ভুল নাম বলেছেন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'জানি না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'আপনার পরিবারের কোন মহিলা কি পুষ্টি বিষয়ক কোন প্রশিক্ষণ পেয়েছেন?' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'হ্যঁা' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'উপরের উত্তর যদি হ্যঁা হয়, তবে প্রশিক্ষণের প্রাপ্ত সুপারিশ মত আপনি/ আপনারা খাদ্য প্রস্তুত করতে পারেন?' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'হ্যঁা' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeQuestions N'উপরের উত্তর ‘হঁ্যা’ হলে, মাসে কত দিন প্রশিক্ষণে প্রাপ্ত সুপারিশ মত আপনি/ আপনারা খাবার খেয়ে থাকেন?' --@QuestionText NVARCHAR(250)
        , @QuestionId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertVitaminKnowledgeOptions N'৭ দিন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'১০ দিন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'১৫ দিন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'২০ দিন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'৩০ দিন' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertVitaminKnowledgeOptions N'এক দিনও না' --@OptionText NVARCHAR(250)
        , @QuestionId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL
END
