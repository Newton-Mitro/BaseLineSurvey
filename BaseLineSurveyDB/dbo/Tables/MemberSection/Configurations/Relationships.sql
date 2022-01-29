/*
Table Name Relationships		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Relationships table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Relationships (
    RelationshipCode BIGINT PRIMARY KEY IDENTITY(1, 1) NOT NULL
    , RelationshipName NVARCHAR(250) NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    );
