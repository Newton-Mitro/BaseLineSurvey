/*
Stored Procedure InsertSupervisorsEmployee	
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 19 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 19 December 2022
Script Description            : This procedure will Insert Supervisors Employee.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertSupervisorsEmployee (
    @SupervisorId BIGINT
    , @EmployeeId BIGINT
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
        INSERT INTO SupervisorsEmployees (
            SupervisorId
            , EmployeeId
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @SupervisorId
            , @EmployeeId
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
