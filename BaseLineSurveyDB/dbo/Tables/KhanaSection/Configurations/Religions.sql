/*
Table Name Districts		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Districts table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Religions (
    ReligionId BIGINT PRIMARY KEY IDENTITY(1, 1) NOT NULL
    , ReligionName NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    );
