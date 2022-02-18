/*
Stored Procedure SelectUsers	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 16 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 16 February 2022
Script Description            : This procedure will Select Users
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectUsers (
    @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block

        SELECT *
            FROM dbo.View_Users;

            SET @ReturnResult = 'Success'
        --End Main Block
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