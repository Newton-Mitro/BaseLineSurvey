/*
Stored Procedure InsertOrUpdateToken	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 30 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 30 January 2022
Script Description            : This procedure will Insert Or Update Token
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateToken (
    @UserId BIGINT
    , @TokenKey VARCHAR(MAX)
    , @IssuedOn DATETIME2
    , @ExpiresOn DATETIME2
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        IF EXISTS (
                SELECT *
                FROM dbo.Tokens
                WHERE UserId = @UserId
                )
        BEGIN
            UPDATE dbo.Tokens
            SET TokenKey = @TokenKey
                , UpdatedAt = GETDATE()
                , IssueDate = @IssuedOn
                , ExpireDate = @ExpiresOn
            WHERE UserId = @UserId;
        END
        ELSE
        BEGIN
            INSERT INTO dbo.Tokens (
                TokenKey
                , IssueDate
                , ExpireDate
                , UserId
                , CreatedAt
                , UpdatedAt
                )
            VALUES (
                @TokenKey
                , @IssuedOn
                , @ExpiresOn
                , @UserId
                , GETDATE()
                , GETDATE()
                )
        END

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to insert or update.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
