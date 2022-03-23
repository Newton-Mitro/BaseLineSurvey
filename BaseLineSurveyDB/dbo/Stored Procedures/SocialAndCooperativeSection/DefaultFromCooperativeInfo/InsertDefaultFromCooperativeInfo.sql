/*
Stored Procedure InsertDefaultFromCooperativeInfo	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 26 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 26 February 2022
Script Description            : This procedure will Insert Default From CooperativeInfo
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertDefaultFromCooperativeInfo (
    @TT_DefaultFromCooperativeInfos TT_DefaultFromCooperativeInfos READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point
    BEGIN TRY
        --Start Main Block
        DECLARE @CooperativeInfoId BIGINT
            , @KhanaId BIGINT
            , @MemberId BIGINT
            , @CooperativeId BIGINT
            , @CreatedBy BIGINT
            , @UpdatedBy BIGINT
            , @CreatedAt DATETIME2
            , @UpdatedAt DATETIME2
            , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT CooperativeInfoId
            , KhanaId
            , MemberId
            , CooperativeId
            , CreatedBy
            , UpdatedBy
            , CreatedAt
            , UpdatedAt
        FROM @TT_DefaultFromCooperativeInfos;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @CooperativeInfoId
            , @KhanaId
            , @MemberId
            , @CooperativeId
            , @CreatedBy
            , @UpdatedBy
            , @CreatedAt
            , @UpdatedAt;

        DELETE
        FROM dbo.DefaultFromCooperativeInfos
        WHERE KhanaId = @KhanaId
        AND MemberId = @MemberId;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            INSERT INTO dbo.DefaultFromCooperativeInfos(
                KhanaId
                , MemberId
                , CooperativeId
                , CreatedBy
                , UpdatedBy
                , CreatedAt
                , UpdatedAt
                )
            VALUES (
                @KhanaId
                , @MemberId
                , @CooperativeId
                , @CreatedBy
                , @UpdatedBy
                , GETDATE()
                , GETDATE()
                )

            SET @RowCount = @RowCount + 1;

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @CooperativeInfoId
            , @KhanaId
            , @MemberId
            , @CooperativeId
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
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
