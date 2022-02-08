/*
Stored Procedure InsertEducationOption	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Insert Education Option
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertEducationOption (
    @EducationQuestionId BIGINT
    , @OptionText NVARCHAR(255)
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
        INSERT INTO dbo.EducationOptions(
            EducationQuestionId
            , OptionText
            , CreatedAt
            , CreatedBy
            , UpdatedAt
            , UpdatedBy
            )
        VALUES (
            @EducationQuestionId
            , @OptionText
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
        IF @@TRANCOUNT > 0
        BEGIN
            SET @ReturnResult = 'Failed'

            ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
        END
    END CATCH
END;