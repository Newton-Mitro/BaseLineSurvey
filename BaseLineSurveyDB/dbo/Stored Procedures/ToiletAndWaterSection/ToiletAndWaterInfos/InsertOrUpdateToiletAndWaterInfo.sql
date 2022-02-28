/*
Stored Procedure InsertOrUpdateToiletAndWaterInfo	
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 18 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 18 December 2022
Script Description            : This procedure will Insert Or Update Toilet And Water Info
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertOrUpdateToiletAndWaterInfo (
    @ToiletAndWaterInfoId BIGINT = NULL
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
        IF (@ToiletAndWaterInfoId > 0)
        BEGIN
            UPDATE dbo.ToiletAndWaterInfos
            SET KhanaId = @KhanaId
                , QuestionId = @QuestionId
                , OptionId = @OptionId
                , InformationStatusCode = @InformationStatusCode
                , UpdatedBy = @AccessedBy
                , UpdatedAt = GETDATE()
            WHERE ToiletAndWaterInfoId = @ToiletAndWaterInfoId;

            IF @@ROWCOUNT > 0
                SET @ReturnResult = 'Success'
            ELSE
                SET @ReturnResult = 'Unable to insert.'
        END
        ELSE
        BEGIN
            IF NOT EXISTS (
                    SELECT *
                    FROM dbo.ToiletAndWaterInfos
                    WHERE KhanaId = @KhanaId
                        AND QuestionId = @QuestionId
                    )
            BEGIN
                INSERT INTO dbo.ToiletAndWaterInfos (
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
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
