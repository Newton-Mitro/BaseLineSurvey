/*
Stored Procedure SelectCooperatives	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 26 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 26 February 2022
Script Description            : This procedure will Select Cooperatives.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectCooperatives (
    @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT * FROM dbo.CooperativeList;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to insert.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;

