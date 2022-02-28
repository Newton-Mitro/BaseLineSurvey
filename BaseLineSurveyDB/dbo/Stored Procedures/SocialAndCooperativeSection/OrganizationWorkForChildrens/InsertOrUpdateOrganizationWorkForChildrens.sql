/*
Stored Procedure InsertOrUpdateOrganizationWorkForChildrens	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 22 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 22 February 2022
Script Description            : This procedure will Insert Or Update Organization Work For Childrens
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateOrganizationWorkForChildrens (
    @TT_OrganizationWorkForChildrens TT_OrganizationWorkForChildrens READONLY
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @OrganizationWorkForChildrenId BIGINT
            , @VillageId BIGINT
            , @SocialWorkTypeId BIGINT
            , @InformationStatusCode BIGINT
            , @CreatedBy BIGINT
            , @UpdatedBy BIGINT
            , @CreatedAt DATETIME2
            , @UpdatedAt DATETIME2
            , @RowCount INT;

        SET @RowCount = 0;

        DECLARE CURSOR_PRODUCT CURSOR
        FOR
        SELECT OrganizationWorkForChildrenId
            , VillageId
            , SocialWorkTypeId
            , InformationStatusCode
            , CreatedBy
            , UpdatedBy
            , CreatedAt
            , UpdatedAt
        FROM @TT_OrganizationWorkForChildrens;

        OPEN CURSOR_PRODUCT;

        FETCH NEXT
        FROM CURSOR_PRODUCT
        INTO @OrganizationWorkForChildrenId
            , @VillageId
            , @SocialWorkTypeId
            , @InformationStatusCode
            , @CreatedBy
            , @UpdatedBy
            , @CreatedAt
            , @UpdatedAt;

        DELETE
        FROM dbo.OrganizationWorkForChildrens
        WHERE VillageId = @VillageId;

        WHILE @@FETCH_STATUS = 0
        BEGIN
            INSERT INTO dbo.OrganizationWorkForChildrens (
                VillageId
                , SocialWorkTypeId
                , InformationStatusCode
                , CreatedBy
                , UpdatedBy
                , CreatedAt
                , UpdatedAt
                )
            VALUES (
                @VillageId
                , @SocialWorkTypeId
                , @InformationStatusCode
                , @CreatedBy
                , @UpdatedBy
                , GETDATE()
                , GETDATE()
                )

            SET @RowCount = @RowCount + 1;

            FETCH NEXT
            FROM CURSOR_PRODUCT
            INTO @OrganizationWorkForChildrenId
                , @VillageId
                , @SocialWorkTypeId
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
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
