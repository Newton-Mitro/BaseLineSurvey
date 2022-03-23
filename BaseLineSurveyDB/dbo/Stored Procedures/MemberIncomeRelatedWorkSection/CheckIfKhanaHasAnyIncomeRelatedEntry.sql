/*
Stored Procedure CheckIfKhanaHasAnyIncomeRelatedEntry	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 01 March 2022
Script Altered By             : Newton Mitro
Altered At                    : 01 March 2022
Script Description            : This procedure CheckIfKhanaHasAnyIncomeRelatedEntry
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.CheckIfKhanaHasAnyIncomeRelatedEntry (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        IF EXISTS (SELECT * FROM dbo.MemberIncomeRelatedWorks WHERE KhanaId = @KhanaId)
        BEGIN
            SELECT 'Entry Exist.';
            SET @ReturnResult = 'Success'
        END
        ELSE
        BEGIN
            SELECT 'Entry Do Not Exist.';
            SET @ReturnResult = 'No entry found.'
        END

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
