/*
Stored Procedure InsertOrUpdateUserSupervisor	
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 19 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 19 December 2022
Script Description            : This procedure will Insert Or Update User Supervisor
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateUserSupervisor (
    @SupervisorId BIGINT
    , @UserId BIGINT
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
        IF EXISTS (
                SELECT *
                FROM dbo.UsersSupervisors
                WHERE UserId = @UserId
                )
        BEGIN
            UPDATE dbo.UsersSupervisors
            SET SupervisorId = @SupervisorId
                , UpdatedBy = @AccessedBy
                , UpdatedAt = GETDATE()
            WHERE UserId = @UserId;
        END
        ELSE
        BEGIN
            INSERT INTO dbo.UsersSupervisors (
                SupervisorId
                , UserId
                , CreatedAt
                , CreatedBy
                , UpdatedAt
                , UpdatedBy
                )
            VALUES (
                @SupervisorId
                , @UserId
                , GETDATE()
                , @AccessedBy
                , GETDATE()
                , @AccessedBy
                )

            SET @ScopeId = SCOPE_IDENTITY();
        END

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
