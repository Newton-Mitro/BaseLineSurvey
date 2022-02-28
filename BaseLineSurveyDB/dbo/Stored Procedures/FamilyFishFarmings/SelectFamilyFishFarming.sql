/*
Stored Procedure SelectFamilyFishFarming	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 27 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 27 February 2022
Script Description            : This procedure will Select Family Fish Farming
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyFishFarming (
    @KhanaId BIGINT 
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point
    BEGIN TRY
        --Start Main Block
        SELECT * FROM dbo.FamilyFishFarmings
        WHERE KhanaId = @KhanaId;

        IF @@RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'No record found.'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;

