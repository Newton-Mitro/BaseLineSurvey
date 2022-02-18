/*
Table Name Professions		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 15 February 2022
Script Description            : This procedure will create Professions table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Professions (
    ProfessionCode BIGINT PRIMARY KEY IDENTITY NOT NULL
    , ProfessionName NVARCHAR(250) NOT NULL
    , IsRiskedProfession BIT NOT NULL DEFAULT 0
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    );
