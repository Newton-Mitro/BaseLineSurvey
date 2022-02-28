/*
Stored Procedure InsertCooperativeQuestion	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 24 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 24 February 2022
Script Description            : This procedure will InsertCooperativeQuestion
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertCooperativeQuestion (
    @QuestionText NVARCHAR(250)
    , @ScopeId BIGINT = NULL OUTPUT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        INSERT INTO dbo.CooperativeQuestions(
            QuestionText
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @QuestionText
            , GETDATE()
            , @AccessedBy
            , GETDATE()
            , @AccessedBy
            )

        SET @ScopeId = SCOPE_IDENTITY();

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
