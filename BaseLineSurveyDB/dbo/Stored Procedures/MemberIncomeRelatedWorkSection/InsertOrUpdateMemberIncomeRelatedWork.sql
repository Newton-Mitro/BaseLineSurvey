/*
Stored Procedure InsertOrUpdateMemberIncomeRelatedWork	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 19 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 22 February 2022
Script Description            : This procedure will InsertOrUpdateMemberIncomeRelatedWork
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateMemberIncomeRelatedWork (
    @TT_MemberIncomeRelatedWorks TT_MemberIncomeRelatedWorks READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @MemberIncomeRelatedWorkId BIGINT
            , @KhanaId BIGINT
            , @MemberId BIGINT
            , @IncomeRelatedWorkId BIGINT
            , @InformationStatusCode BIGINT
            , @CreatedBy BIGINT
            , @UpdatedBy BIGINT
            , @CreatedAt DATETIME2
            , @UpdatedAt DATETIME2
            , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT MemberIncomeRelatedWorkId
            , KhanaId
            , MemberId
            , IncomeRelatedWorkId
            , InformationStatusCode
            , CreatedBy
            , UpdatedBy
            , CreatedAt
            , UpdatedAt
        FROM @TT_MemberIncomeRelatedWorks;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @MemberIncomeRelatedWorkId
            , @KhanaId
            , @MemberId
            , @IncomeRelatedWorkId
            , @InformationStatusCode
            , @CreatedBy
            , @UpdatedBy
            , @CreatedAt
            , @UpdatedAt;

        DELETE
        FROM dbo.MemberIncomeRelatedWorks
        WHERE KhanaId = @KhanaId
            AND MemberId = @MemberId;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            INSERT INTO dbo.MemberIncomeRelatedWorks (
                MemberId
                , KhanaId
                , IncomeRelatedWorkId
                , InformationStatusCode
                , CreatedAt
                , CreatedBy
                , UpdatedAt
                , UpdatedBy
                )
            VALUES (
                @MemberId
                , @KhanaId
                , @IncomeRelatedWorkId
                , @InformationStatusCode
                , GETDATE()
                , @CreatedBy
                , GETDATE()
                , @UpdatedBy
                )

            SET @RowCount = @RowCount + 1;

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @MemberIncomeRelatedWorkId
                , @KhanaId
                , @MemberId
                , @IncomeRelatedWorkId
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
            SET @ReturnResult = 'Faield to insert or update.'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
