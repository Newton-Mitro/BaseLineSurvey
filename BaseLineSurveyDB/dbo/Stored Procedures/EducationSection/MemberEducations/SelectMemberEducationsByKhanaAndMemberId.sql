/*
Stored Procedure SelectMemberEducationByKhanaId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Select Member Education By Khana Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberEducationsByKhanaAndMemberId (
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
        SELECT MemberEducations.*
        , EducationQuestions.QuestionText
        , EducationOptions.OptionText
        , Members.MemberName
        FROM dbo.MemberEducations
        LEFT JOIN dbo.Members
        ON MemberEducations.MemberId = Members.MemberId
        LEFT JOIN dbo.EducationQuestions
        ON MemberEducations.EducationQuestionId = EducationQuestions.EducationQuestionId
        LEFT JOIN dbo.EducationOptions
        ON MemberEducations.EducationOptionId = EducationOptions.EducationOptionId
        WHERE MemberEducations.KhanaId = @KhanaId
        AND MemberEducations.MemberId = @MemberId;

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
END;
