/*
Stored Procedure InsertOrUpdateVitaminKnowledge	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 31 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 31 January 2022
Script Description            : This procedure will Insert Or Update Vitamin Knowledge
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateVitaminKnowledge (
    @VitaminKnowledgeId BIGINT = NULL
    , @KhanaId BIGINT
    , @QuestionId BIGINT
    , @OptionId BIGINT
    , @InformationStatusCode BIGINT = 1
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        IF (@VitaminKnowledgeId > 0)
        BEGIN
            UPDATE dbo.VitaminKnowledges
            SET KhanaId = @KhanaId
                , QuestionId = @QuestionId
                , OptionId = @OptionId
                , InformationStatusCode = @InformationStatusCode
                , UpdatedBy = @AccessedBy
                , UpdatedAt = GETDATE()
            WHERE VitaminKnowledgeId = @VitaminKnowledgeId;

            IF @@ROWCOUNT > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'Unable to update.'
        END
        ELSE
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.VitaminKnowledges
                    WHERE KhanaId = @KhanaId
                        AND QuestionId = @QuestionId
                    )
            BEGIN
                INSERT INTO dbo.VitaminKnowledges (
                    KhanaId
                    , QuestionId
                    , OptionId
                    , InformationStatusCode
                    , CreatedBy
                    , UpdatedBy
                    , CreatedAt
                    , UpdatedAt
                    )
                VALUES (
                    @KhanaId
                    , @QuestionId
                    , @OptionId
                    , @InformationStatusCode
                    , @AccessedBy
                    , @AccessedBy
                    , GETDATE()
                    , GETDATE()
                    );

                IF @@ROWCOUNT > 0
                    SET @ReturnResult = 'Success'
                ELSE
                    SET @ReturnResult = 'Unable to insert.'
            END
            ELSE
            BEGIN
                SET @ReturnResult = 'Already submitted.'
            END
        END

        --End Main Block
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
