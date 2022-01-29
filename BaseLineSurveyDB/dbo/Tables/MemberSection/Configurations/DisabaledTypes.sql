/*
Table Name DisabaledTypes		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Disabaled Types table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.DisabaledTypes (
    DisabledTypeCode BIGINT NOT NULL PRIMARY KEY IDENTITY(1, 1)
    , DisabledTypeName NVARCHAR(250) NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
