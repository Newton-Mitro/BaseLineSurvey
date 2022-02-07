/*
Stored Procedure InsertOrUpdateParentResponsibilityToChild	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 06 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 06 February 2022
Script Description            : This procedure will Insert Or Update Parent Responsibility To Child
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateParentResponsibilityToChild (
    @ParentResponsibilityToChilds ParentResponsibilityToChilds READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE 
        @ParentResponsibilityQuestionId BIGINT
        , @ParentResponsibilityOptionId BIGINT
        , @KhanaId BIGINT
        , @AnswerGivenById BIGINT
        , @InformationStatusCode BIGINT
        , @CreatedBy BIGINT
        , @UpdatedBy BIGINT
        , @CreatedAt DATETIME2
        , @UpdatedAt DATETIME2
        , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR SELECT 
                ParentResponsibilityQuestionId
                , ParentResponsibilityOptionId
                , KhanaId
                , AnswerGivenById
                , InformationStatusCode
                , CreatedBy
                , UpdatedBy
                , CreatedAt
                , UpdatedAt
            FROM 
                @ParentResponsibilityToChilds;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT FROM CURSOR_PRODUCT INTO 
                @ParentResponsibilityQuestionId
                , @ParentResponsibilityOptionId
                , @KhanaId
                , @AnswerGivenById
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , @CreatedAt
                , @UpdatedAt;

         DELETE FROM dbo.ParentsResponsibilityToChilds
                WHERE KhanaId = @KhanaId
                AND ParentResponsibilityQuestionId = @ParentResponsibilityQuestionId;

        WHILE @@FETCH_STATUS = 0
            BEGIN
                INSERT INTO dbo.ParentsResponsibilityToChilds
                (
                ParentResponsibilityQuestionId
                , ParentResponsibilityOptionId
                , KhanaId
                , AnswerGivenById
                , InformationStatusCode
                , CreatedBy
                , UpdatedBy
                , CreatedAt
                , UpdatedAt
                )
                VALUES
                (
                @ParentResponsibilityQuestionId
                , @ParentResponsibilityOptionId
                , @KhanaId
                , @AnswerGivenById
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , @CreatedAt
                , GETDATE()
                )

                SET @RowCount = @RowCount + 1;

                FETCH NEXT FROM CURSOR_PRODUCT INTO 
                @ParentResponsibilityQuestionId
                , @ParentResponsibilityOptionId
                , @KhanaId
                , @AnswerGivenById
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , @CreatedAt
                , @UpdatedAt;
            END;

        CLOSE CURSOR_PRODUCT;

        DEALLOCATE CURSOR_PRODUCT;
       
       IF @RowCount > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Faield to insert or delete.'
        

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
