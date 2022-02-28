/*
Stored Procedure SelectFamilyIncomeByKhanaId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 02 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 02 February 2022
Script Description            : This procedure will Select Family Income By KhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyIncomeByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT FamilyIncomes.*
            , IncomeSources.SourceName
            , InformationStatuses.InformationStatusName
        FROM dbo.FamilyIncomes
        LEFT JOIN IncomeSources
            ON FamilyIncomes.IncomeSourceId = IncomeSources.IncomeSourceId
        LEFT JOIN dbo.InformationStatuses
            ON FamilyIncomes.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE KhanaId = @KhanaId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Recors not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
