/*
Stored Procedure SelectMemberTorturedReasonByKhanaAndMemberId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 19 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 19 February 2022
Script Description            : This procedure will Select Member Tortured Reason By Khana And MemberId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberTorturedReasonByKhanaAndMemberId (
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
        SELECT MemberTorturedReasons.*
            , TorturedReasons.TorturedReasonText
            , Members.MemberName
            , InformationStatuses.InformationStatusName
        FROM dbo.[MemberTorturedReasons]
        LEFT JOIN dbo.TorturedReasons
            ON [MemberTorturedReasons].TorturedReasonCode = TorturedReasons.TorturedReasonCode
        LEFT JOIN dbo.Members
            ON [MemberTorturedReasons].MemberId = Members.MemberId
        LEFT JOIN dbo.InformationStatuses
            ON [MemberTorturedReasons].InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE [MemberTorturedReasons].KhanaId = @KhanaId
            AND [MemberTorturedReasons].MemberId = @MemberId;

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
