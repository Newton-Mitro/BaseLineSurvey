/*
Script InsertToiletAndWaterQuestions
--------------------------------------------------------------------------------------
Script By                     : NEWTON MITRO
Created At                    : 13 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 13 January 2022
Script Description            : This Script will Insert Toilet And Water Questions.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT 1
        FROM dbo.ToiletAndWaterQuestions
        )
BEGIN
    DECLARE @QuestionScopeId AS BIGINT;

    EXEC InsertToiletAndWaterQuestions N'আপনার পরিবারের সদস্যদেও খাবার পানির প্রধান উৎস কি?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL;

    EXEC InsertToiletAndWaterOptions N'নিজস্ব মটর/ পাম্প' --@OptionText NVARCHAR(250)
        , @QuestionScopeId --@QuestionsId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'সরকারী (পাবলিক) ট্যাপ/ স্থায়ী পাইপ' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'টিউবওয়েল (নলকুপ)' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'সংরক্ষিত কুপ/ কুয়া/ ইদারা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অসংরক্ষিত কুপ/ কুয়া/ ইদারা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ভূ—পৃষ্টের পানি (নদী, খাল, পুকুর, নালা ইত্যাদি)' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অন্যান্য' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পানির উৎস যদি টিউবওয়েল (নলক’প) হয়, তাহলে নলক’পের মালিকানা বিষয়ে প্রশ্ন করুন' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'নিজস্ব' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অন্যের' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'সরকারী' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অন্যান্য' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'যে টিউবওয়েল/নলকূপ ব্যবহার করেন তা কি আর্সেনিক পরীক্ষা করা হয়েছে?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'প্রযোজ্য নয়/ জানিনা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'(যদি উত্ত্র যদি হঁ্যা’ হয়) নলকূপ কি আর্সেনিক মুক্ত? (প্রয়োজনে নলকূপে রং আছে কিনা জিজ্ঞাসা করুন, সম্ভব হলে নিজে দেখুন)' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'প্রযোজ্য নয়/ জানিনা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'খাবার পানি আনতে যাওয়া, সংগ্রহ করা ও ফিরে আসতে মোট কত সময় লাগে?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'বাড়ী/ বাসা থেকে ০—৩০ মিনিট' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'বাড়ী/ বাসা থেকে ৩০—৬০ মিনিট' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'বাড়ী/ বাসা থেকে ৬০মিনিটের বেশী' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'বাড়ী থেকেই পানি সংগ্রহ করা যায়' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'জানি না/ কোন উত্তর নেই' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'খানার সদস্যরা সাধারণতঃ কোন ধরনের পায়খানা ব্যবহার করেন? (সরেজমিনে দেখে নিশ্চিত হয়ে সার্কেল করুন)' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'স্যানিটারী/ ফ্লাস করে নিরাপদ ট্যাংকে ধারন' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ফ্লাস করে নিরাপদ গর্তে (লেট্রিনে) ধারন' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'পিট লেট্রিন (স্লাাব সহ সাইফুন আছে)' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'পিট লেট্রিন (স্লাাব সহ সাইফুন নাই)' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'পিট লেট্রিন (স্লাাব বিহীন/ খোলা)' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অন্যের/ পাবলিক লেট্রিন ব্যবহার করে' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ড্রেন/ নালা—নর্দমা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'খোলা/ ঝুলন্ত' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ঝোপঝাড়/ মাঠ' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'অন্যান্য' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'কার কাছ থেকে পায়খানা পেয়েছেন?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'পৌরসভা/ জনস্বাস্থ্য প্রকৌশল (উপজেলা)/ ইউনিয়ন পরিষদ' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'এনজিও/ বেসরকারী সংস্থা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'আত্মীয়/ প্রতিবেশী' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'নিজম্ব খরচ' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'প্রযোজ্য নয়' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটির জলাবদ্ধতাটি (ওয়াটার সিল) অক্ষত আছে কি? (সম্ভব হলে নিজে দেখুন)' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটি কি ব্যবহার উপযোগী?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটি ব্যবহার করার চিহ্ন আছে কি?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটি পরিষ্কার পরিচ্ছন্ন আছে কি?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটির চারপাশ পরিষ্কার পরিচ্ছন্ন আছে কি?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানাটি স্বাস্থ্য সম্মত কিনা? (নিজে পর্যবেক্ষন করবেন)' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'সাধারণত কি পায়ে দিয়ে পায়খানায় যান' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'জুতা/ সেন্ডেল' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'খালি পায়ে' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'পায়খানা ব্যবহারের পর কি দিয়ে হাত ধৌত করেণ' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'সাবান/ ডিটারজেন্ট' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ছাঁই' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'মাটি' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'ধৌত করিনা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'বাচ্চার পায়খানা/ মল কোথায় ফেলেন' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'লেট্রিনে' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'খোলা জায়গায়' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterQuestions N'বাচ্চার পায়খানা/শৌচ করার পর নীজে হাত ধৌত করেন কি?' --@QuestionText NVARCHAR(250)
        , @QuestionScopeId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL 

    EXEC InsertToiletAndWaterOptions N'হঁ্যা' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL

    EXEC InsertToiletAndWaterOptions N'না' --@OptionText NVARCHAR(250)
        , @QuestionScopeId
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL
END
