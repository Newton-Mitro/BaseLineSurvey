/*
Script InsertMaritalStatus
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 13 December 2022
Script Description            : This Script will Insert Marital Status.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM MaritalStatuses
        )
BEGIN
    EXEC InsertMaritalStatus N'বিবাহিত' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertMaritalStatus N'অবিবাহিত' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertMaritalStatus N'বিধবা/ বিপত্নীক' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertMaritalStatus N'আলাদাভাবে বসবাসকারী' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertMaritalStatus N'তালাক প্রাপ্ত' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
