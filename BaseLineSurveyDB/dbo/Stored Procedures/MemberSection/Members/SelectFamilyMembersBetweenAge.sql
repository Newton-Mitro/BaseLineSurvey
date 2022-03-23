/*
Stored Procedure SelectFamilyMembersBetweenAge		
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 08 February 2022
Script Altered By             : NEWTON MITRO
Altered At                    : 08 February 2022
Script Description            : This procedure will SSelect Family Members Between Age
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.SelectFamilyMembersBetweenAge (
    @KhanaId BIGINT
    , @FromAge INT
    , @ToAge INT
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
        WHERE KhanaId = @KhanaId
            AND dbo.GetAgeFromDateOfBirth(DateOfBirth) >= @FromAge
            AND dbo.GetAgeFromDateOfBirth(DateOfBirth) <= @ToAge ORDER BY MemberName ASC;

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
