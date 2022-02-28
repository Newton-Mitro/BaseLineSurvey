/*
Stored Procedure SelectOrganizationWorkForChildrensByVillageId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 22 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 22 February 2022
Script Description            : This procedure will Select Organization Work For Childrens By VillageId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectOrganizationWorkForChildrensByVillageId (
    @VillageId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT *
        FROM dbo.OrganizationWorkForChildrens
        WHERE VillageId = @VillageId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'No records found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
