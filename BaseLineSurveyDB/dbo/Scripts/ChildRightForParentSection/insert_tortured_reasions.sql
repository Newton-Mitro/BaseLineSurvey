/*
Script InsertTorturedReasiones
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert Tortured Reasiones.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM TorturedReasons
        )
BEGIN
    EXEC InsertTorturedReasion N'অনপুস্থীত থাকা বা দেরি করে যাওয়া' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'নিয়মকানুন না মানা বা খারাপ ব্যবহার করা' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'সম্পদ বা মালামাল ক্ষতি করা' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'কাজ না করা বা ফাকি দেয়া' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'কাজে ভুল করার জন্য' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'অনৈতিক কাজে রাজি না হওয়া' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertTorturedReasion N'কোন কারণ ছাড়াই' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertTorturedReasion N'অন্যান্য (উল্লেখ্য)' -- @TorturedReasionText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
