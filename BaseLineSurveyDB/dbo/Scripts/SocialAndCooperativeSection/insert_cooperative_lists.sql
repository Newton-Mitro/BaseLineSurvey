/*
Script InsertCooperativeList
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 25 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 25 January 2022
Script Description            : This Script will Insert Cooperative List.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM CooperativeList
        )
BEGIN
    EXEC InsertCooperativeList N'দি খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড, ঢাকা' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'তুমিলিয়া খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নাগরী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নোয়াখালী প্রবাসী খ্রীষ্টান সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকাস্থ মঠবাড়ী খ্রিস্টান কর্মজীবি সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মহাখালী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মঠবাড়ী খ্রিস্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকাস্থ বোর্নী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নয়ানগর খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'উত্তরবঙ্গ খ্রীষ্টান বহুমুখী সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'ঢাকা খ্রীষ্টিয়ান বহুমূখী সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ধরেন্ডা খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'গারো কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ভাসানিয়া খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'দড়িপাড়া খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'তুমিলিয়া ধর্মপল্লী খ্রীষ্টান বহুমুখী সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকা খ্রীষ্টান কো-অপারেটিভ হাউজিং সোসাইটি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'শুলপুর খ্রিষ্টিয়ান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'রাঙ্গামাটিয়া খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকাস্থ রাঙ্গামাটিয়া ধর্মপল্লী খ্রীষ্টান বহুমূখী সমবায় সমিতি লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'কাফরুল খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'খ্রীষ্টিয়ান সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ল²ীবাজার খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'চড়াখোলা খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'দি মেট্রোপলিটান খ্রীষ্টান কো-অপারেটিভ হাউজিং সোসাইটি লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'গোল্লা খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকাস্থ পাদ্রীশিবপুর খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মাউছাইদ খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পাগাড় খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মঠবাড়ী ক্ষুদ্র ব্যবসায়ী সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'ময়মনসিংহ শহর বাঙ্গালী খ্রীষ্টান সঞ্চয় ও ঋণদান সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকা শহরস্থ সাভারবাসী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'গারো কর্মজীবি সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মাল্লা খ্রিষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'তুইতাল খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পীরগাছা থাংয়ানি কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নৈপাড়া খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'হারবাইদ খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'হাসনাবাদ খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'গতি খ্রীষ্টান সঞ্চয় ও ঋণদান সমিতি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'ভেটুর সঞ্চয় ও ঋণদান সমিতি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পিএইচসি উজ্জ্বল বহুমূখী সমবায় সমিতি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'করাণ খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ফাওকাল খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পূর্ব দড়িপাড়া বহুমূখী সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'উত্তর দড়িপাড়া ক্রেডিট ইউনিয়ন' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পশ্চিম দড়িপাড়া ক্রেডিট ইউনিয়ন' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'দড়িপাড়া (উত্তর) সার্বিক গ্রাম উন্নয়ন সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'দড়িপাড়া (দক্ষিন) সার্বিক গ্রাম উন্নয়ন সমবায় সমিতি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'একতা বহুমূখী কো-অপারেটিভ হাউজিং সোসাইটি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'দি খ্রীষ্টান কো-অপারেটিভ মাল্টিপারপাস সোসাইটি লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'আঠারগ্রাম খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'তেজগাঁও খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'জনতা ব্যাংক এমপ্লয়ীজ কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ঢাকাস্থ বৃহত্তর কুষ্টিয়া খ্রীষ্টিয়ান কর্মজীবি সমবায় লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পিএইচবি খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'সম্প্রীতি কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'রাজধানী খ্রীষ্টিয়ান বহুমূখী সমবায় সমিতি লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'মোহাম্মদপুর খ্রীষ্টান বহুমূখী সমবায় সমিতি লিঃ, ঢাকা' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'বালিডিয়র খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'বালিডিয়র খ্রীষ্টান বহুমূখী সমবায় সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'বড় গোল্লা খ্রীষ্টান ক্রেডিট ইউনিয়ন' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'দেওতলা খ্রীষ্টান সমবায় ঋণদান সমিতি লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নয়নশ্রী সাধু রকের খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'বক্সনগর খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'বর্ণালী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'নারিকেলবাড়ী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'গৌড়নদী খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লি:' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'খ্রীষ্টিয়ান মিতব্যয়ী কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিঃ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'ভাদুন খ্রীষ্টান কো-অপারেটিভ ক্রেডিট ইউনিয়ন লিমিটেড' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertCooperativeList N'দক্ষিন দড়িপাড়া খ্রীষ্টান সঞ্চয় ও ঋণদান সমিতি ' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'তুমিলিয়া গ্রাম খ্রীষ্টান সঞ্চয় ও ঋণদান সমিতি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertCooperativeList N'পূর্ব ভাদার্ত্তী উদয়ন সঞ্চয় ও ঋণদান সমিতি' -- @CoperativeName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
