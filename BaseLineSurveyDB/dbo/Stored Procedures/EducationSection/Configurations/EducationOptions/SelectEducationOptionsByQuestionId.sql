/*
Stored Procedure SelectEducationOptionsByQuestionId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will SelectEducationOptionsByQuestionId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectEducationOptionsByQuestionId (
    @EducationQuestionId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point
   
    BEGIN TRY
        --Start Main Block
        SELECT * FROM dbo.EducationOptions
        WHERE EducationQuestionId = @EducationQuestionId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to insert.'

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
