CREATE TABLE [dbo].[MemberSleepingPlaces]
(
	MemberSleepingPlaceId BIGINT NOT NULL PRIMARY KEY IDENTITY
	, SleepingPlaceId BIGINT NOT NULL
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
	, CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL, 
    CONSTRAINT [FK_MemberSleepingPlaces_ToSleepingPlaces] FOREIGN KEY (SleepingPlaceId) REFERENCES SleepingPlaces(SleepingPlaceId)
)
