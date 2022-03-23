/*
Stored Procedure DefaultFromCooperativeInfosByKhanaAndMemberId	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 26 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 26 February 2022
Script Description            : This procedure will DefaultFromCooperativeInfosByKhanaAndMemberId
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectDefaultFromCooperativeInfosByKhanaAndMemberId (
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
        SELECT DefaultFromCooperativeInfos.* 
        , CooperativeList.CooperativeName
        , Members.MemberName
        FROM dbo.DefaultFromCooperativeInfos
        LEFT JOIN dbo.CooperativeList
        ON DefaultFromCooperativeInfos.CooperativeId = CooperativeList.CooperativeId
         LEFT JOIN dbo.Members
        ON DefaultFromCooperativeInfos.MemberId = Members.MemberId
        WHERE DefaultFromCooperativeInfos.KhanaId = @KhanaId
        AND DefaultFromCooperativeInfos.MemberId = @MemberId ORDER BY CooperativeInfoId DESC;

        IF @@RowCount > 0
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
