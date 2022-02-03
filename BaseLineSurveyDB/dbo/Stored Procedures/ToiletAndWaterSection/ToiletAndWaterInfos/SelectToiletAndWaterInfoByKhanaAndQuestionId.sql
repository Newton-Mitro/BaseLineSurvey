/*
Stored Procedure SelectToiletAndWaterInfoByKhanaAndQuestionId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 31 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 31 January 2022
Script Description            : This procedure will Select Toilet And Water Info By Khana And QuestionId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectToiletAndWaterInfoByKhanaAndQuestionId (
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
        SELECT *
        FROM ToiletAndWaterInfos
        WHERE KhanaId = @KhanaId
            AND QuestionId = @QuestionId;

        --End Main Block
        IF @@ROWCOUNT > 0
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
