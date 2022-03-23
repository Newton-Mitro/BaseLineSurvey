/*
Stored Procedure SelectCooperativeAnswersByKhanaId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 24 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 24 February 2022
Script Description            : This procedure will SelectCooperativeAnswersByKhanaId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectCooperativeAnswersByKhanaId (
    @KhanaId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT -- Return success or failed reason.
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT CooperativeAnswers.*
        , CooperativeQuestions.QuestionText
        , CooperativeOptions.OptionText
        FROM CooperativeAnswers
        LEFT JOIN dbo.CooperativeQuestions
        ON CooperativeAnswers.QuestionId = CooperativeQuestions.QuestionId
        LEFT JOIN dbo.CooperativeOptions
        ON CooperativeAnswers.OptionId = CooperativeOptions.OptionId
        WHERE KhanaId = @KhanaId ORDER BY CooperativeAnswerId DESC;

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
