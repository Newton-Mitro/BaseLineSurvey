/*
Stored Procedure SelectRaces		
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 24 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 24 January 2022
Script Description            : This procedure will get Races.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectRaces (
    @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT *
        FROM Races;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
