/*
Stored Procedure InsertUser	
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 19 December 2022
Script Altered By             : Newton Mitro
Altered At                    : 30 January 2022
Script Description            : This procedure will Insert User.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertUser (
    @FullName NVARCHAR(250) = NULL
    , @Email VARCHAR(250)
    , @Password VARCHAR(250)
    , @RoleId BIGINT
    , @IsActive BIT = 1
    , @ScopeId BIGINT = NULL OUTPUT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        INSERT INTO dbo.Users (
            FullName
            , Email
            , Password
            , RoleId
            , IsActive
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @FullName
            , @Email
            , @Password
            , @RoleId
            , @IsActive
            , GETDATE()
            , @AccessedBy
            , GETDATE()
            , @AccessedBy
            )

        SET @ScopeId = SCOPE_IDENTITY();

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to insert.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
