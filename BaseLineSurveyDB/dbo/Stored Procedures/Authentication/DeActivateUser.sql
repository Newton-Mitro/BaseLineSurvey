/*
Stored Procedure DeActivateUser	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will De Activate User
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeActivateUser (
    @UserId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        UPDATE dbo.Users
        SET IsActive = 0
            , UpdatedAt = GETDATE()
            , UpdatedBy = @AccessedBy
        WHERE UserId = @UserId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to update.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
