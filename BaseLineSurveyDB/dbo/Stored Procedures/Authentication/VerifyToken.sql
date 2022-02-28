/*
Stored Procedure VerifyToken	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 30 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 30 January 2022
Script Description            : This procedure will Verify Token
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.VerifyToken (
    @UserId BIGINT
    , @TokenKey VARCHAR(MAX)
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @ExistingToken VARCHAR(MAX)

        SELECT @ExistingToken = TokenKey
        FROM dbo.Tokens
        WHERE UserId = @UserId;

        IF (@ExistingToken IS NULL)
            SET @ReturnResult = 'Invalid token.'
        ELSE
        BEGIN
            IF (@ExistingToken = @TokenKey)
            BEGIN
                SELECT UserId
                    , CreatedAt AS CreatedOn
                    , ExpireDate AS ExpiresOn
                FROM dbo.Tokens
                WHERE UserId = @UserId

                SET @ReturnResult = 'Success'
            END
            ELSE
                SET @ReturnResult = 'Invalid token.'
        END

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
