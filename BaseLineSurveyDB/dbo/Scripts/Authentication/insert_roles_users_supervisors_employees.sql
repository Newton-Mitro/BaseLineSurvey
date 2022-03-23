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
DECLARE @JoyMathusGomes AS VARCHAR(250) --supervisor
DECLARE @DigontoEvanGomes AS VARCHAR(250)
DECLARE @NayanFrancisCosta AS VARCHAR(250)
DECLARE @ShreyaClaraCosta AS VARCHAR(250)
DECLARE @PriyontoPalma AS VARCHAR(250)
DECLARE @ShuvoJustineCosta AS VARCHAR(250)
DECLARE @NoelTGomes AS VARCHAR(250) --supervisor
DECLARE @AngelyMariaRozario AS VARCHAR(250)
DECLARE @ShimantoCosta AS VARCHAR(250)
DECLARE @MonishaPhilominaCosta AS VARCHAR(250)
DECLARE @ChristopherLinkonMondal AS VARCHAR(250)
DECLARE @WinCosta AS VARCHAR(250)
DECLARE @NikhilDa AS VARCHAR(250)
DECLARE @Reza AS VARCHAR(250)

SET @PasswordHash = CONVERT(VARCHAR(250), HASHBYTES('MD5', 'password'), 2);
SET @JoyMathusGomes = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01610700077'), 2);--supervisor
SET @DigontoEvanGomes = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01820108589'), 2);
SET @NayanFrancisCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01861541439'), 2);
SET @ShreyaClaraCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01625543302'), 2);
SET @PriyontoPalma = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01720933969'), 2);
SET @ShuvoJustineCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01754210841'), 2);
SET @NoelTGomes = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01782076966'), 2);--supervisor
SET @AngelyMariaRozario = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01820923442'), 2);
SET @ShimantoCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01705121806'), 2);
SET @MonishaPhilominaCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01889057598'), 2);
SET @ChristopherLinkonMondal = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01858662563'), 2);
SET @WinCosta = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01985293822'), 2);
SET @NikhilDa = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01628881699'), 2);
SET @Reza = CONVERT(VARCHAR(250), HASHBYTES('MD5', '01913672072'), 2);

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

    EXEC InsertUser 'Joy Mathus Gomes' -- Full Name
        , 'joy@gmail.com' -- @Email VARCHAR(250)
        , @JoyMathusGomes
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Noel T. Gomes' -- Full Name
        , 'noel@gmail.com' -- @Email VARCHAR(250)
        , @NoelTGomes
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

    EXEC InsertUser 'Digonto Evans Gomes' -- Full Name
        , 'digonto@gmail.com' -- @Email VARCHAR(250)
        , @DigontoEvanGomes -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Nayan Francis Costa' -- Full Name
        , 'nayan@gmail.com' -- @Email VARCHAR(250)
        , @NayanFrancisCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Shreya Clara Costa' -- Full Name
        , 'clara@gmail.com' -- @Email VARCHAR(250)
        , @ShreyaClaraCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Priyonto Palma' -- Full Name
        , 'priyonto@gmail.com' -- @Email VARCHAR(250)
        , @PriyontoPalma -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Shuvo Justine Costa' -- Full Name
        , 'shuvo@gmail.com' -- @Email VARCHAR(250)
        , @ShuvoJustineCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Angely Maria Rozario' -- Full Name
        , 'angely@gmail.com' -- @Email VARCHAR(250)
        , @AngelyMariaRozario -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Shimanto Costa' -- Full Name
        , 'shimanto@gmail.com' -- @Email VARCHAR(250)
        , @ShimantoCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Monisha Philomina Costa' -- Full Name
        , 'monisha@gmail.com' -- @Email VARCHAR(250)
        , @MonishaPhilominaCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Christopher Linkon Mondal' -- Full Name
        , 'christopher@gmail.com' -- @Email VARCHAR(250)
        , @ChristopherLinkonMondal -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'Win Costa' -- Full Name
        , 'win@gmail.com' -- @Email VARCHAR(250)
        , @WinCosta -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'mr. nikhil' -- Full Name
        , 'nikhilda@gmail.com' -- @Email VARCHAR(250)
        , @NikhilDa -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT

    EXEC InsertUser 'reza rabbi' -- Full Name
        , 'rezarabbi@gmail.com' -- @Email VARCHAR(250)
        , @Reza -- @Password VARCHAR(250)
        , @RoleID -- @RoleId BIGINT
        , 1 -- @IsActive
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
END
