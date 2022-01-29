/*
Table Name CooperativeList		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 23 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 23 January 2022
Script Description            : This procedure will create CooperativeList table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE [dbo].[CooperativeList] (
    [CooperativeId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [CoperativeName] NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
