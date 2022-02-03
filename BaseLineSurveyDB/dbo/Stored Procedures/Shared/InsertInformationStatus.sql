/*
Stored Procedure InsertInformationStatus		
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 December 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 18 December 2022
Script Description            : This procedure will Insert Information Status
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertInformationStatus (
    @InformationStatusName NVARCHAR(250)
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
        INSERT INTO dbo.InformationStatuses (
            InformationStatusName
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @InformationStatusName
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
        IF @@TRANCOUNT > 0
        BEGIN
            SET @ReturnResult = 'Failed'

            ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
        END
    END CATCH
END;
