/*
Stored Procedure DeleteMemberEducation		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 09 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 09 February 2022
Script Description            : This procedure will Delete Member Education
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.DeleteMemberEducation (
    @MemberEducationId BIGINT
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DELETE FROM dbo.MemberEducations
        WHERE MemberEducationId = @MemberEducationId;

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
