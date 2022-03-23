/*
Stored Procedure SelectMemberIncomeRelatedWorkByKhanaAndMemberId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 19 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 19 February 2022
Script Description            : This procedure willSelectMemberIncomeRelatedWorkByKhanaAndMemberId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberIncomeRelatedWorkByKhanaAndMemberId (
    @KhanaId BIGINT
    , @MemberId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT MemberIncomeRelatedWorks.*
            , Professions.ProfessionName
            , Members.MemberName
            , InformationStatuses.InformationStatusName
        FROM dbo.MemberIncomeRelatedWorks
        LEFT JOIN dbo.Professions
            ON MemberIncomeRelatedWorks.IncomeRelatedWorkId = Professions.ProfessionCode
        LEFT JOIN dbo.Members
            ON MemberIncomeRelatedWorks.MemberId = Members.MemberId
        LEFT JOIN dbo.InformationStatuses
            ON MemberIncomeRelatedWorks.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE MemberIncomeRelatedWorks.KhanaId = @KhanaId
            AND MemberIncomeRelatedWorks.MemberId = @MemberId ORDER BY MemberIncomeRelatedWorkId DESC;

        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'No entry found.'

        --End Main Block
        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
