/*
Stored Procedure SelectFoodShortageMonthsByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 12 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 12 February 2022
Script Description            : This procedure will Select Food Shortage Months By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFoodShortageMonthsByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FoodShortageMonths.*
            , Months.MonthName
            , InformationStatuses.InformationStatusName
        FROM dbo.FoodShortageMonths
        LEFT JOIN dbo.Months
            ON FoodShortageMonths.MonthId = Months.MonthId
        LEFT JOIN dbo.InformationStatuses
            ON FoodShortageMonths.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId;

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
