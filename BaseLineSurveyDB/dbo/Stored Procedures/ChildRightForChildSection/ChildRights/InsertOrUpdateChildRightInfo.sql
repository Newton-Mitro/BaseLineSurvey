/*
Stored Procedure InsertOrUpdateChildRightInfo	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 07 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 07 February 2022
Script Description            : This procedure will Insert Or Update Child Right Info
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateChildRightInfo (
    @ChildRightInfos ChildRightInfos READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE 
        @ChildRightId BIGINT
        , @ChildRightQuestionId BIGINT
        , @ChildRightOptionId BIGINT
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
                ChildRightId
                , ChildRightQuestionId
                , ChildRightOptionId
                , KhanaId
                , AnswerGivenById
                , InformationStatusCode
                , CreatedBy
                , UpdatedBy
                , CreatedAt
                , UpdatedAt
            FROM 
                @ChildRightInfos;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT FROM CURSOR_PRODUCT INTO 
                @ChildRightId
                , @ChildRightQuestionId
                , @ChildRightOptionId
                , @KhanaId
                , @AnswerGivenById
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , @CreatedAt
                , @UpdatedAt;

         DELETE FROM dbo.ChildRights
                WHERE KhanaId = @KhanaId
                AND ChildRightQuestionId = @ChildRightQuestionId;

        WHILE @@FETCH_STATUS = 0
            BEGIN
                INSERT INTO dbo.ChildRights
                (
                ChildRightQuestionId
                , ChildRightOptionId
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
                @ChildRightQuestionId
                , @ChildRightOptionId
                , @KhanaId
                , @AnswerGivenById
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , GETDATE()
                , GETDATE()
                )

                SET @RowCount = @RowCount + 1;

                FETCH NEXT FROM CURSOR_PRODUCT INTO 
                @ChildRightId
                , @ChildRightQuestionId
                , @ChildRightOptionId
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