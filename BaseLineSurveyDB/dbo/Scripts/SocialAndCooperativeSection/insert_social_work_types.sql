/*
Script InsertSocialWorkType
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 23 January 2022
Script Description            : This Script will Insert Social Work Type.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM SocialWorkTypes
        )
BEGIN
    EXEC InsertSocialWorkType N'শিশুদের পড়াশোনায় আর্থিক সহায়তা করে' -- @WorkTypeText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSocialWorkType N'শিশুদের বৃত্তিমূলক কাজে সহায়তা করে' --  @WorkTypeText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSocialWorkType N'উচ্চ শিক্ষায় ঋণদানে সহায়তা করে' --  @WorkTypeText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertSocialWorkType N'উন্নয়ন মূলক কাজে সহায়তা করে' --  @WorkTypeText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
