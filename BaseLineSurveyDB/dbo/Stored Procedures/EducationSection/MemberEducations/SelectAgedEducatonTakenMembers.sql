/*
Stored Procedure SelectAgedEducatonTakenMembers		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 10 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 10 February 2022
Script Description            : This procedure will Select Aged Educaton Taken Members
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectAgedEducatonTakenMembers (
    @KhanaId BIGINT 
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        SELECT *
        FROM dbo.View_Members
        LEFT JOIN dbo.MemberEducations
        ON View_Members.MemberId = MemberEducations.MemberId
        WHERE MemberEducations.KhanaId = @KhanaId
        AND MemberEducations.EducationQuestionId = 2
        AND MemberEducations.EducationOptionId = 3;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            SET @ReturnResult = 'Failed'

            ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
        END
    END CATCH
END
