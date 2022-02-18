/*
Stored Procedure UpdateUser	
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 15 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will Update User
--------------------------------------------------------------------------------------
*/
CREATE PROCEDURE dbo.UpdateUser (
    @UserId BIGINT
    , @FullName NVARCHAR(250) = NULL
    , @Email VARCHAR(250)
    , @RoleId BIGINT
    , @IsActive BIT = 1
    , @ReturnResult VARCHAR(255) = NULL OUTPUT
    , @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
    )
AS
BEGIN
    BEGIN TRANSACTION;

    SAVE TRANSACTION MySavePoint;-- Create a save point

    BEGIN TRY
        --Start Main Block
        UPDATE dbo.Users 
        SET FullName = @FullName
            , Email = @Email
            , RoleId = @RoleId
            , IsActive = @IsActive
            , UpdatedAt = GETDATE()
            , UpdatedBy = @AccessedBy
        WHERE UserId = @UserId;


        --End Main Block
        IF @@ROWCOUNT > 0
            SET @ReturnResult = 'Success'
        ELSE
            SET @ReturnResult = 'Unable to update.'

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
