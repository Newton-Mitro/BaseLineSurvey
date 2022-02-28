/*
Stored Procedure DeleteFamilyAssetById	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 06 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 06 February 2022
Script Description            : This procedure will Delete Family Asset By Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteFamilyAssetById (
    @FamilyAssetId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE
        FROM dbo.FamilyAssets
        WHERE FamilyAssetId = @FamilyAssetId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Nothing to delete.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
