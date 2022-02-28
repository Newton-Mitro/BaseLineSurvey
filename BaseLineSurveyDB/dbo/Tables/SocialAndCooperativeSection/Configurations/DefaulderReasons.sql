/*
Table Name DefaulderReasons		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 23 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 23 January 2022
Script Description            : This procedure will create DefaulderReasons table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE [dbo].DefaulderReasons (
    DefaulderReasonId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , DefaulderReasonText NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    )
