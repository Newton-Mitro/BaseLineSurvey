/*
Stored Procedure DeleteYesterdaysFood	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Delete Yesterdays Food
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteYesterdaysFood (
    @YesterdaysFoodIdId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE
        FROM dbo.YesterdaysFoods
        WHERE YesterdaysFoodIdId = @YesterdaysFoodIdId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to delete.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
