/*
Stored Procedure VerifyUser	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 30 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 30 January 2022
Script Description            : This procedure will Verify User
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.VerifyUser (
    @Email VARCHAR(250)
    , @Password VARCHAR(250)
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @VerifiedUserId BIGINT
        DECLARE @IsActive BIT

        SELECT @VerifiedUserId = UserId, @IsActive = IsActive
        FROM dbo.Users
        WHERE Email = @Email
            AND Password = @Password;

        IF (@VerifiedUserId IS NULL)
        BEGIN
         SELECT *
            FROM dbo.View_Users
            WHERE UserId = 0;
            SET @ReturnResult = 'User email or password don not match.'
        END
        ELSE
        BEGIN
            IF( @IsActive = 1)
            BEGIN
                SELECT *
                FROM dbo.View_Users
                WHERE UserId = @VerifiedUserId;

                SET @ReturnResult = 'Success'
            END
            ELSE
            BEGIN
                SET @ReturnResult = 'User is not active.'
            END
        END

        --End Main Block
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
