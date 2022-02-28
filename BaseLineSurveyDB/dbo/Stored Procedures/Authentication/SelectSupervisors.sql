/*
Stored Procedure VerifyUser	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 13 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 13 February 2022
Script Description            : This procedure will Verify User
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectSupervisors (@ReturnResult VARCHAR(255) = NULL OUTPUT)
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT *
        FROM dbo.View_Users
        WHERE RoleId = 2;

        SET @ReturnResult = 'Success'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
