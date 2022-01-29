/*
Table Name SocialWorkTypes		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 23 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 23 January 2022
Script Description            : This procedure will create SocialWorkTypes table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE [dbo].[SocialWorkTypes] (
    [SocialWorkTypeId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [WorkTypeText] NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
