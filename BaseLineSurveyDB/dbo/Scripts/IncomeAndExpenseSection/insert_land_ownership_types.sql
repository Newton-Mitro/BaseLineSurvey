/*
Script InsertLandOwnershipType
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert Land Owner ship Types.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM LandOwnershipTypes
        )
BEGIN
    EXEC InsertLandOwnershipType N'নিজের জমি' -- @LandOwnershipText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertLandOwnershipType N'বর্গা' -- @LandOwnershipText NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
