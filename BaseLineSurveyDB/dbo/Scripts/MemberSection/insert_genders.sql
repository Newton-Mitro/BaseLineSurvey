/*
Script InsertGender
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 13 December 2022
Script Description            : This Script will Insert Gender.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM Genders
        )
BEGIN
    EXEC InsertGender N'পুরুষ' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertGender N'মহিলা' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertGender N'ট্রান্সজেন্ডার / হিজরা' -- @DisabledTypeName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
