/*
Stored Procedure InsertFamilyMemberDefaulterReason	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 25 February 2022
Script Description            : This procedure will Insert Family Member Defaulter Reason
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyMemberDefaulterReasonByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point
    BEGIN TRY
        --Start Main Block
        
        SELECT * FROM dbo.FamilyMemberDefaulderReasons
        LEFT JOIN dbo.DefaulderReasons
        ON FamilyMemberDefaulderReasons.DefaulderReasonId = DefaulderReasons.DefaulderReasonId
        WHERE KhanaId = @KhanaId ORDER BY FamilyMemberDefaulderReasonId DESC;


        IF @@RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Faield to insert or delete.'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;

