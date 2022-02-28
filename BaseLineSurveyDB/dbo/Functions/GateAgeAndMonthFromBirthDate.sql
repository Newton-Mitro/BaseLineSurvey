CREATE FUNCTION dbo.GateAgeAndMonthFromBirthDate (@DateOfBirth DATETIME2)
RETURNS @returntable TABLE (
    Years INT
    , Months INT
    )
AS
BEGIN
    DECLARE @Years INT;
    DECLARE @Months INT;

    SELECT @Years = CAST((DATEDIFF(M, @DateOfBirth, GETDATE()) / 12) AS VARCHAR)
        , @Months = CAST((DATEDIFF(M, @DateOfBirth, GETDATE()) % 12) AS VARCHAR);

    INSERT @returntable
    SELECT @Years
        , @Months;

    RETURN
END
