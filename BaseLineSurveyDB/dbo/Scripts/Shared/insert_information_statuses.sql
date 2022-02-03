IF NOT EXISTS (
        SELECT *
        FROM InformationStatuses
        )
BEGIN
    EXEC dbo.InsertInformationStatus 'Field Entry' --@InformationStatusName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC dbo.InsertInformationStatus 'Veryfied By Supervisor' --@InformationStatusName NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , NULL --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
