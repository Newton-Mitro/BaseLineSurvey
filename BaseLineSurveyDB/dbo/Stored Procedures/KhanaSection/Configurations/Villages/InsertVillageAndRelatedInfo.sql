/*
Stored Procedure InsertVillage		
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 23 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 23 February 2022
Script Description            : This procedure will INSERT Village.
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.InsertVillageAndRelatedInfo(
    @ParishesServicentersId BIGINT
    , @VillageName NVARCHAR(255)
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @ScopeId BIGINT = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        DECLARE @VillageId AS BIGINT;

		 EXEC dbo.InsertVillages @VillageName
            , @VillageId OUTPUT
            , @ReturnResult OUTPUT
            , @AccessedBy -- Id of user who is accessing this stored procedure. 
       
         EXEC dbo.InsertParishServiceCenterVillages @ParishesServicentersId
            , @VillageId
            , @ScopeId OUTPUT
            , @ReturnResult OUTPUT
            , @AccessedBy -- Id of user who is accessing this stored procedure. 
        
         SET @ReturnResult = 'Success'
        --End Main Block
       

        COMMIT TRANSACTION
    END TRY

    BEGIN CATCH
        SET @ReturnResult = 'Transaction roll back.'

        ROLLBACK TRANSACTION MySavePoint;-- Rollback to MySavePoint
    END CATCH
END;