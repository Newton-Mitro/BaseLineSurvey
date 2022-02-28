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
DECLARE @User2ID AS BIGINT
DECLARE @SupervisorId AS BIGINT
DECLARE @PasswordHash AS VARCHAR(250)

SET @PasswordHash = CONVERT(VARCHAR(250), HASHBYTES('MD5', 'password'), 2);

IF NOT EXISTS (
        SELECT *
        FROM Roles
        )
BEGIN
    EXEC InsertRole 'Super Admin' -- @RoleName NVARCHAR(250)
        , @RoleID OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'ICT SQUAD' -- Full Name
        , 'super.admin@email.com' -- @Email VARCHAR(250)
        , @PasswordHash -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertRole 'Supervisor' -- @RoleName NVARCHAR(250)
        , @RoleID OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Supervisor One' -- Full Name
        , 'supervisor.one@email.com' -- @Email VARCHAR(250)
        , @PasswordHash -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertRole 'Field Agent' -- @RoleName NVARCHAR(250)
        , @RoleID OUTPUT -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

     EXEC InsertUser 'Field Agent One' -- Full Name
        , 'fieldagent.one@email.com' -- @Email VARCHAR(250)
        , @PasswordHash -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

END
