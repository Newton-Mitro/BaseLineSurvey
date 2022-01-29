/*
Script InsertReligion
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 25 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 25 January 2022
Script Description            : This Script will Insert Religion.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM Religions
        )
BEGIN
    EXEC InsertReligion N'খ্রিস্টান' --@ReligionName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertReligion N'অন্যান্য' --@ReligionName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
