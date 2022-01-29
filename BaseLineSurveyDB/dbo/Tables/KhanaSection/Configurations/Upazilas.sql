/*
Table Name Upazilas		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Upazilas table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Upazilas (
    UpazilaId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , DistrictsId BIGINT NOT NULL
    , UpazilaName NVARCHAR(250) NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_Upazilas_Districts FOREIGN KEY (DistrictsId) REFERENCES Districts(DistrictId)
    )
