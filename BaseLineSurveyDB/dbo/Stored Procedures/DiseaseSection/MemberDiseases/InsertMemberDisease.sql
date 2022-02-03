﻿/*
Stored Procedure InsertMemberDisease		
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 18 December 2022
Script Altered By             : REZA E RABBI
Altered At                    : 18 December 2022
Script Description            : This procedure will Insert Member Disease
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertMemberDisease (
    @KhanaId BIGINT
    , @MemberId BIGINT
    , @DiseaseCode BIGINT
    , @TreatmentCentercode BIGINT
    , @DoctorTypeCode BIGINT
    , @FirstTreatmentFrom NVARCHAR(250)
    , @InformationStatusCode BIGINT
    , @IfCovid_NumberOfDose INT
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
        INSERT INTO dbo.MemberDiseases (
            KhanaId
           ,MemberId
           ,DiseaseCode
           ,TreatmentCentercode
           ,DoctorTypeCode
           ,FirstTreatmentFrom
           ,InformationStatusCode
           ,IfCovid_NumberOfDose
           ,CreatedBy
           ,UpdatedBy
           ,CreatedAt
           ,UpdatedAt
           )
        VALUES (
            @KhanaId
           ,@MemberId
           ,@DiseaseCode
           ,@TreatmentCentercode
           ,@DoctorTypeCode
           ,@FirstTreatmentFrom
           ,@InformationStatusCode
           ,@IfCovid_NumberOfDose
           ,@AccessedBy
           ,@AccessedBy
           ,GETDATE()
           ,GETDATE()
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
