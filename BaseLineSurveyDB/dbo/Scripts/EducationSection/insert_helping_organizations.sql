/*
Script InsertHelpingOrganizationes
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert Helping Organizationes.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM HelpingOrganizations
        )
BEGIN
    EXEC InsertHelpingOrganization N' দি-খ্রীস্টান কো-পারেটিভ ক্রেডিট ইউনিয়ন লি:' --@HelpingOrganizationName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertHelpingOrganization N'অন্যান্য ক্রেডিট ইউনিয়ন' -- @HelpingOrganizationName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertHelpingOrganization N'মিশনারী সংগঠন/প্রতিষ্ঠান' -- @HelpingOrganizationName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertHelpingOrganization N'সরকারী অনুদান' -- @HelpingOrganizationName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertHelpingOrganization N'অন্যান্য উৎস থেকে' -- @HelpingOrganizationName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
