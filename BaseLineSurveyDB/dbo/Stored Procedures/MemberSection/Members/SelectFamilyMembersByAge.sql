/*
Stored Procedure SelectFamilyMembersByAge	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 25 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 20 January 2022
Script Description            : This procedure will Select Family Members By Age
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyMembersByAge (
    @KhanaId BIGINT
    , @Age INT
    , @Condition INT -- 1 = Equal, 2 = Less Than, 3 = Greater Than
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        IF (@Condition = 1)
        BEGIN
            SELECT *
            FROM dbo.View_Members
            WHERE KhanaId = @KhanaId
                AND dbo.GetAgeFromDateOfBirth(DateOfBirth) = @Age ORDER BY MemberName ASC;
        END
        ELSE IF (@Condition = 2)
        BEGIN
            SELECT *
            FROM dbo.View_Members
            WHERE KhanaId = @KhanaId
                AND dbo.GetAgeFromDateOfBirth(DateOfBirth) < @Age ORDER BY MemberName ASC;
        END
        ELSE IF (@Condition = 3)
        BEGIN
            SELECT *
            FROM dbo.View_Members
            WHERE KhanaId = @KhanaId
                AND dbo.GetAgeFromDateOfBirth(DateOfBirth) > @Age ORDER BY MemberName ASC;
        END

        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'No Records Found.'

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;
