/*
Table Name DoctorTypes		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Doctor Types table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.DoctorTypes (
    DoctorTypeCode BIGINT PRIMARY KEY IDENTITY(1, 1) NOT NULL
    , DoctorTypeName NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    );
