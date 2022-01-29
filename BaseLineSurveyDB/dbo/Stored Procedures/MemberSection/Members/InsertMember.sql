﻿/*
Stored Procedure InsertMember	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 20 January 2022
Script Description            : This procedure will Insert Member
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertMember (
    @RelationWithFamilyHeadId BIGINT
    , @GenderCode BIGINT
    , @FirstProfessionCode BIGINT
    , @SecondProfessionCode BIGINT
    , @IncomeRelatedWork BIGINT
    , @MaritalStatusCode BIGINT
    , @DisabledTypeCode BIGINT
    , @KhanaId BIGINT
    , @InformationStatusCode BIGINT
    , @AgeInMonth INT
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
        INSERT INTO [dbo].[Members] (
            [RelationWithFamilyHeadId]
            , [GenderCode]
            , [FirstProfessionCode]
            , [SecondProfessionCode]
            , [IncomeRelatedWork]
            , [MaritalStatusCode]
            , [DisabledTypeCode]
            , [KhanaId]
            , [InformationStatusCode]
            , [AgeInMonth]
            , [CreatedBy]
            , [UpdatedBy]
            , [CreatedAt]
            , [UpdatedAt]
            )
        VALUES (
            @RelationWithFamilyHeadId
            , @GenderCode
            , @FirstProfessionCode
            , @SecondProfessionCode
            , @IncomeRelatedWork
            , @MaritalStatusCode
            , @DisabledTypeCode
            , @KhanaId
            , @InformationStatusCode
            , @AgeInMonth
            , @AccessedBy
            , @AccessedBy
            , GETDATE()
            , GETDATE()
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