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
    @Email VARCHAR(250)
    , @Password VARCHAR(250)
    , @RoleId BIGINT
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
        INSERT INTO Users (
            Email
            , Password
            , RoleId
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @Email
            , @Password
            , @RoleId
            , getdate()
            , @AccessedBy
            , getdate()
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
        IF @@TRANCOUNT > 0
        BEGIN
            SET @ReturnResult = 'Failed'

            ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
        END
    END CATCH
END;
