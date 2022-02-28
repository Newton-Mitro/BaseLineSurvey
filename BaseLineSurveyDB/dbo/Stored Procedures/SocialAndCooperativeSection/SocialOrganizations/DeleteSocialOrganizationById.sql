/*
Stored Procedure DeleteSocialOrganizationById	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 23 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 23 February 2022
Script Description            : This procedure will Delete Social Organization By Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteSocialOrganizationById (
    @SocialOrganizationId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE
        FROM dbo.SocialOrganizations
        WHERE SocialOrganizationId = @SocialOrganizationId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'No Social Organization found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
