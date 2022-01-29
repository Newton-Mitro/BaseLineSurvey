/*
Script InsertRace
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 25 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 25 January 2022
Script Description            : This Script will Insert Race.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM Races
        )
BEGIN
    EXEC InsertRace N'ক্যাথলিক' --@RaceName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertRace N'বাপ্টিষ্ট' --@RaceName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertRace N'অন্যান্য' --@RaceName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
