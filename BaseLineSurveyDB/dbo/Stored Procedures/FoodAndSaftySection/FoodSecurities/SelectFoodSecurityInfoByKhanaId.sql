/*
Stored Procedure SelectFoodSecurityInfoByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Select Food Security Info By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFoodSecurityInfoByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FoodSecurities.*
            , InformationStatuses.InformationStatusName
        FROM dbo.FoodSecurities
        LEFT JOIN dbo.InformationStatuses
            ON FoodSecurities.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId ORDER BY FoodSecuritieId DESC;

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
