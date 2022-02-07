/*
Script InsertExpenseSources
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert Expense Sources.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM dbo.ExpenseSources
        )
BEGIN
    EXEC InsertExpenseSource N'খাদ্য বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'চিকিৎসা বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'কাপড়-চোপর বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'শিক্ষা বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'বাড়ী-ঘর মেরামত বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'আসবাব পত্র বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'কৃষি / উপকরণ/ যন্ত্রপাতি ক্রয়/ ফসল উৎপাদন বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'মোবাইল ফোন বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertExpenseSource N'বিনোদনমূলক যন্ত্র ক্রয় বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'বিবাহ অনুষ্ঠান বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --upto 10
    EXEC InsertExpenseSource N'সামাজিক/ ধর্মীয় অনুষ্ঠান বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'ঋণ পরিশোধ বাবদ ব্যয়' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertExpenseSource N'অন্যান্য' -- @ExpenseSourceName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
