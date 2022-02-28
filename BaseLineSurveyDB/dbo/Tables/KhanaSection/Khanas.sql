/*
Table Name Khanas		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Khanas table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.Khanas (
    KhanaId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , DistrictId BIGINT NOT NULL
    , UpazilaId BIGINT NOT NULL
    , ParishId BIGINT NOT NULL
    , ServiceCenterId BIGINT NOT NULL
    , VillageId BIGINT NOT NULL
    , ReligionId BIGINT NOT NULL
    , RaceId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_Khanas_Districts FOREIGN KEY (DistrictId) REFERENCES Districts(DistrictId)
    , CONSTRAINT FK_Khanas_Upazilas FOREIGN KEY (UpazilaId) REFERENCES Upazilas(UpazilaId)
    , CONSTRAINT FK_Khanas_Parises FOREIGN KEY (ParishId) REFERENCES Parishes(ParishId)
    , CONSTRAINT FK_Khanas_ServiceCenters FOREIGN KEY (ServiceCenterId) REFERENCES ServiceCenters(ServiceCenterId)
    , CONSTRAINT FK_Khanas_Villages FOREIGN KEY (VillageId) REFERENCES Villages(VillageId)
    , CONSTRAINT FK_Khanas_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    , CONSTRAINT [FK_Khanas_Religions] FOREIGN KEY (ReligionId) REFERENCES Religions(ReligionId)
    , CONSTRAINT [FK_Khanas_Races] FOREIGN KEY (RaceId) REFERENCES Races(RaceId)
    )
