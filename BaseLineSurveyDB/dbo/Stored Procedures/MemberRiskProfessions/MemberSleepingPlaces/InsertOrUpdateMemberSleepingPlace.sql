/*
Stored Procedure InsertOrUpdateMemberSleepingPlace	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 19 February 2022
Script Description            : This procedure will Insert Or Update Member Sleeping Place
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateMemberSleepingPlace (
    @TT_MemberSleepingPlaces TT_MemberSleepingPlaces READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @MemberSleepingPlaceId BIGINT
            , @KhanaId BIGINT
            , @MemberId BIGINT
            , @SleepingPlaceId BIGINT
            , @InformationStatusCode BIGINT
            , @CreatedBy BIGINT
            , @UpdatedBy BIGINT
            , @CreatedAt DATETIME2
            , @UpdatedAt DATETIME2
            , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT MemberSleepingPlaceId
            , KhanaId
            , MemberId
            , SleepingPlaceId
            , InformationStatusCode
            , CreatedBy
            , UpdatedBy
            , CreatedAt
            , UpdatedAt
        FROM @TT_MemberSleepingPlaces;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @MemberSleepingPlaceId
            , @KhanaId
            , @MemberId
            , @SleepingPlaceId
            , @InformationStatusCode
            , @CreatedBy
            , @UpdatedBy
            , @CreatedAt
            , @UpdatedAt;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            IF EXISTS (
                    SELECT *
                    FROM dbo.MemberSleepingPlaces
                    WHERE MemberSleepingPlaceId = @MemberSleepingPlaceId
                    )
            BEGIN
                UPDATE dbo.MemberSleepingPlaces
                SET SleepingPlaceId = @SleepingPlaceId
                    , KhanaId = @KhanaId
                    , MemberId = @MemberId
                    , InformationStatusCode = @InformationStatusCode
                    , UpdatedAt = GETDATE()
                    , UpdatedBY = @UpdatedBy
                WHERE MemberSleepingPlaceId = @MemberSleepingPlaceId;

                SET @RowCount = @RowCount + 1;
            END
            ELSE
            BEGIN
                INSERT INTO dbo.MemberSleepingPlaces (
                    MemberId
                    , KhanaId
                    , SleepingPlaceId
                    , InformationStatusCode
                    , CreatedAt
                    , CreatedBy
                    , UpdatedAt
                    , UpdatedBy
                    )
                VALUES (
                    @MemberId
                    , @KhanaId
                    , @SleepingPlaceId
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
            INTO @MemberSleepingPlaceId
                , @KhanaId
                , @MemberId
                , @SleepingPlaceId
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
