/*
Stored Procedure InsertDefaulderReason	
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 23 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 23 January 2022
Script Description            : This procedure will Insert Defaulder Reason.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertDefaulderReason (
    @DefaulderReasonText NVARCHAR(250)
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
        INSERT INTO DefaulderReasons (
            DefaulderReasonText
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @DefaulderReasonText
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
