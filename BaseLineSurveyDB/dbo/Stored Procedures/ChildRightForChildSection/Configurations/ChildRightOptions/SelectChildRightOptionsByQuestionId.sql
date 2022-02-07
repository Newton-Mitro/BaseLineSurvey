/*
Stored Procedure SelectChildRightOptionsByQuestionId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 25 January 2022
Script Description            : This procedure will Select Child Right Options By QuestionId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectChildRightOptionsByQuestionId (
    @KhanaId BIGINT
    , @ChildRightQuestionId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
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
        FROM dbo.ChildRightOptions
        WHERE ChildRightQuestionId = @ChildRightQuestionId;

        SET @RowCount = @RowCount + @@ROWCOUNT

        SELECT *
        FROM dbo.ChildRights
        WHERE KhanaId = @KhanaId
            AND ChildRightQuestionId = @ChildRightQuestionId;

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
