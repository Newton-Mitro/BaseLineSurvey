/*
Stored Procedure InsertSchoolDropOutInfo		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Insert School Drop Out Info
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertSchoolDropOutInfo (
    @KhanaId BIGINT
    , @MemberId BIGINT
    , @DropOutReasonCode BIGINT
    , @InformationStatusCode BIGINT
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
        INSERT INTO dbo.SchoolDropouts(
            KhanaId
           ,MemberId
           ,DropOutReasonCode
           ,InformationStatusCode
           ,CreatedBy
           ,UpdatedBy
           ,CreatedAt
           ,UpdatedAt
           )
        VALUES (
            @KhanaId
           ,@MemberId
           ,@DropOutReasonCode
           ,@InformationStatusCode
           ,@AccessedBy
           ,@AccessedBy
           ,GETDATE()
           ,GETDATE()
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
