/*
Stored Procedure SelectYesterdaysFoodByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Select Yesterdays Food By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectYesterdaysFoodByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT YesterdaysFoods.*
            , Foods.FoodName
            , InformationStatuses.InformationStatusName
        FROM dbo.YesterdaysFoods
        LEFT JOIN dbo.Foods
            ON YesterdaysFoods.FoodId = Foods.FoodId
        LEFT JOIN dbo.InformationStatuses
            ON YesterdaysFoods.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId ORDER BY YesterdaysFoodIdId DESC;

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
