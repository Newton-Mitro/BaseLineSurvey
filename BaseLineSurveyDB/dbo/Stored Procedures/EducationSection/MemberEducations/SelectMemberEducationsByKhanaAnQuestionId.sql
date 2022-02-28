/*
Stored Procedure SelectMemberEducationsByKhanaAnQuestionId		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Select Member Education By Khana and Question Id
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectMemberEducationsByKhanaAnQuestionId (
    @KhanaId BIGINT
    , @EducationQuestionId BIGINT
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
            , InformationStatuses.InformationStatusName
        FROM dbo.MemberEducations
        LEFT JOIN dbo.Members
            ON MemberEducations.MemberId = Members.MemberId
        LEFT JOIN dbo.EducationQuestions
            ON MemberEducations.EducationQuestionId = EducationQuestions.EducationQuestionId
        LEFT JOIN dbo.EducationOptions
            ON MemberEducations.EducationOptionId = EducationOptions.EducationOptionId
        LEFT JOIN dbo.InformationStatuses
            ON MemberEducations.InformationStatusCode = InformationStatuses.InformationStatusCode
        WHERE MemberEducations.KhanaId = @KhanaId
            AND MemberEducations.EducationQuestionId = @EducationQuestionId;

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Records not found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
