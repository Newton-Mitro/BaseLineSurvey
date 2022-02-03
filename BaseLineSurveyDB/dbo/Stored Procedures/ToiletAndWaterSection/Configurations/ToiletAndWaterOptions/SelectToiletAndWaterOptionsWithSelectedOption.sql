/*
Stored Procedure SelectToiletAndWaterOptionsWithSelectedOption		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 25 January 2022
Script Description            : This procedure will SelectToiletAndWaterOptionsWithSelectedOption
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectToiletAndWaterOptionsWithSelectedOption (
    @KhanaId BIGINT
    , @QuestionId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @RowCount AS INT;

        SET @RowCount = 0;

        SELECT *
        FROM ToiletAndWaterOptions
        WHERE QuestionsId = @QuestionId;

        SET @RowCount = @RowCount + @@ROWCOUNT

        SELECT *
        FROM ToiletAndWaterInfos
        WHERE KhanaId = @KhanaId
            AND QuestionId = @QuestionId;

        SET @RowCount = @RowCount + @@ROWCOUNT

        --End Main Block
        IF @RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

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
