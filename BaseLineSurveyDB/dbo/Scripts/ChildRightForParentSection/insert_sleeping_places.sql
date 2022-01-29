/*
Script InsertSleepingPlacees
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 23 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 23 January 2022
Script Description            : This Script will Insert Tortured Reasiones.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM SleepingPlaces
        )
BEGIN
    EXEC InsertSleepingPlace N'ঘরে/মা-বাবার কাছে' --   @SleepingPlaceText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSleepingPlace N'যেখানে কাজ করে' --   @SleepingPlaceText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSleepingPlace N'আত্মীয়ের বাড়ীতে' --   @SleepingPlaceText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSleepingPlace N'স্টেশনে/ফুটপাথে/রাস্তার পাশে' --   @SleepingPlaceText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSleepingPlace N'অন্যান্য' --   @SleepingPlaceText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
