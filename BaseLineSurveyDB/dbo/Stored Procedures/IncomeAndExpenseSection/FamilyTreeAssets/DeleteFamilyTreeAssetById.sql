/*
Stored Procedure DeleteFamilyTreeAssetById	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 06 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 06 February 2022
Script Description            : This procedure will Delete Family Tree Asset By Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteFamilyTreeAssetById (
    @FamilyTreeAssetId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE FROM dbo.FamilyTreeAssets
        WHERE FamilyTreeAssetId = @FamilyTreeAssetId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Nothing to delete.'

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
