/*
Script InsertRoleUserSupervisorsEmployee
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 13 January 2022
Script Description            : This Script will Insert Role User SupervisorsEmployee.
--------------------------------------------------------------------------------------
*/
DECLARE @RoleID AS BIGINT
DECLARE @UserID AS BIGINT

IF NOT EXISTS (
        SELECT *
        FROM Roles
        )
BEGIN
    EXEC InsertRole 'GOD' -- @RoleName NVARCHAR(250)
        , @RoleID OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Super Admin' --  @UserName NVARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , @UserID OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertSupervisorsEmployee @UserID -- @SupervisorEmployeeId BIGINT
        , @UserID -- @EmployeeId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL --  @ReturnResult VARCHAR(255) = NULL OUTPUT
        , @UserID --  @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
