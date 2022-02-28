/*
Stored Procedure InsertOrUpdateMemberTorturedReason	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 19 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 19 February 2022
Script Description            : This procedure will Insert Or Update Member Tortured Reason
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateMemberTorturedReason (
    @TT_MemberTorturedReasons TT_MemberTorturedReasons READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @MemberTorturedReasonId BIGINT
            , @KhanaId BIGINT
            , @MemberId BIGINT
            , @TorturedReasonCode BIGINT
            , @InformationStatusCode BIGINT
            , @CreatedBy BIGINT
            , @UpdatedBy BIGINT
            , @CreatedAt DATETIME2
            , @UpdatedAt DATETIME2
            , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT MemberTorturedReasonId
            , KhanaId
            , MemberId
            , TorturedReasonCode
            , InformationStatusCode
            , CreatedBy
            , UpdatedBy
            , CreatedAt
            , UpdatedAt
        FROM @TT_MemberTorturedReasons;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @MemberTorturedReasonId
            , @KhanaId
            , @MemberId
            , @TorturedReasonCode
            , @InformationStatusCode
            , @CreatedBy
            , @UpdatedBy
            , @CreatedAt
            , @UpdatedAt;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF EXISTS (
                    SELECT *
                    FROM dbo.[MemberTorturedReasons]
                    WHERE MemberTorturedReasonId = @MemberTorturedReasonId
                    )
            BEGIN
                UPDATE dbo.[MemberTorturedReasons]
                SET TorturedReasonCode = @TorturedReasonCode
                    , KhanaId = @KhanaId
                    , MemberId = @MemberId
                    , InformationStatusCode = @InformationStatusCode
                    , UpdatedAt = GETDATE()
                    , UpdatedBY = @UpdatedBy
                WHERE MemberTorturedReasonId = @MemberTorturedReasonId;

                SET @RowCount = @RowCount + 1;
            END
            ELSE
            BEGIN
                INSERT INTO dbo.[MemberTorturedReasons] (
                    MemberId
                    , KhanaId
                    , TorturedReasonCode
                    , InformationStatusCode
                    , CreatedAt
                    , CreatedBy
                    , UpdatedAt
                    , UpdatedBy
                    )
                VALUES (
                    @MemberId
                    , @KhanaId
                    , @TorturedReasonCode
                    , @InformationStatusCode
                    , GETDATE()
                    , @CreatedBy
                    , GETDATE()
                    , @UpdatedBy
                    )

                SET @RowCount = @RowCount + 1;
            END

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @MemberTorturedReasonId
                , @KhanaId
                , @MemberId
                , @TorturedReasonCode
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
