CREATE TABLE [dbo].[ParishesServiceCenters] (
    [ParishesServiceCentersId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [ParishId] BIGINT NOT NULL
    , [ServiceCenterId] BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL CONSTRAINT [FK_ParisesServicenters_Parises] FOREIGN KEY ([ParishId]) REFERENCES Parishes(ParishId)
    , CONSTRAINT [FK_ParisesServicenters_ServiceCenters] FOREIGN KEY (ServiceCenterId) REFERENCES ServiceCenters(ServiceCenterId)
    )
