/*
Table Name PariseServiceCenterVillages		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 25 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 25 January 2022
Script Description            : This procedure will create Parise ServiceCenter Villages junction  Table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE [dbo].[ParishServiceCenterVillages] (
    [ParishServiceCenterVillageId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , ParishesServiceCentersId BIGINT NOT NULL
    , VillageId BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL CONSTRAINT [FK_PariseServiceCenterVillages_Villages] FOREIGN KEY (VillageId) REFERENCES Villages(VillageId)
    , CONSTRAINT [FK_PariseServiceCenterVillages_ParisesServicenters] FOREIGN KEY (ParishesServiceCentersId) REFERENCES [ParishesServiceCenters]([ParishesServiceCentersId])
    )
