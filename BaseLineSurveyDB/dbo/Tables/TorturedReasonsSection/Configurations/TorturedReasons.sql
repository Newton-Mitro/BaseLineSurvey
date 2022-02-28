/*
Table Name TorturedReasons		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Tortured Reasons table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.TorturedReasons (
    TorturedReasonCode BIGINT NOT NULL PRIMARY KEY IDENTITY
    , TorturedReasonText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
