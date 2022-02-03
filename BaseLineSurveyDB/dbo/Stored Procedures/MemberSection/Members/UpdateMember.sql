/*
Stored Procedure UpdateMember	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 20 January 2022
Script Description            : This procedure will Update Member
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.UpdateMember (
    @MemberId BIGINT
    , @MemberName NVARCHAR(250)
    , @RelationWithFamilyHeadId BIGINT
    , @GenderCode BIGINT
    , @FirstProfessionCode BIGINT
    , @SecondProfessionCode BIGINT
    , @IncomeRelatedWork BIGINT
    , @EducationalStatusCode BIGINT
    , @CurrentlyStudying BIT
    , @MaritalStatusCode BIGINT
    , @DisabledTypeCode BIGINT
    , @KhanaId BIGINT
    , @InformationStatusCode BIGINT
    , @DateOfBirth DATETIME2
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
        UPDATE dbo.Members
        SET RelationWithFamilyHeadId = @RelationWithFamilyHeadId
            , MemberName = @MemberName
            , GenderCode = @GenderCode
            , FirstProfessionCode = @FirstProfessionCode
            , SecondProfessionCode = @SecondProfessionCode
            , IncomeRelatedWork = @IncomeRelatedWork
            , MaritalStatusCode = @MaritalStatusCode
            , EducationalStatusCode = @EducationalStatusCode
            , CurrentlyStudying = @CurrentlyStudying
            , DisabledTypeCode = @DisabledTypeCode
            , KhanaId = @KhanaId
            , InformationStatusCode = @InformationStatusCode
            , DateOfBirth = @DateOfBirth
            , CreatedBy = @AccessedBy
            , UpdatedBy = @AccessedBy
            , CreatedAt = GETDATE()
            , UpdatedAt = GETDATE()
        WHERE MemberId = @MemberId;

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
