/*
Stored Procedure UpdateKhanaAnswerGiver	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 01 March 2022
Script Altered By             : Newton Mitro
Altered At                    : 01 March 2022
Script Description            : This procedure will UpdateKhanaAnswerGiver
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.UpdateKhanaAnswerGiver (
    @KhanaId BIGINT
    , @AnswerGivenBy BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        UPDATE dbo.Khanas
        SET AnswerGivenBy = @AnswerGivenBy
            , CreatedBy = @AccessedBy
            , UpdatedBy = @AccessedBy
            , UpdatedAt = GETDATE()
        WHERE KhanaId = @KhanaId;

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
