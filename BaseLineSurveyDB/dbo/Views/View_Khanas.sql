/*
Script View_Khanas
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 25 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 25 January 2022
Script Description            : This Script will create View_Khanas.
--------------------------------------------------------------------------------------
*/
CREATE VIEW [dbo].[View_Khanas]
AS
SELECT KhanaId
    , Khanas.[DistrictId]
    , Districts.DistrictName
    , Khanas.UpazilaId
    , Upazilas.UpazilaName
    , Khanas.ParishId
    , Parishes.ParishName
    , Khanas.ServiceCenterId
    , ServiceCenters.ServiceCenterName
    , Khanas.VillageId
    , Villages.VillageName
    , Khanas.ReligionId
    , Religions.ReligionName
    , Khanas.RaceId
    , Races.RaceName
    , InformationStatusCode
    , HouseReference
    , Khanas.CreatedBy
    , Creator.Email AS CreatorName
    , Khanas.UpdatedBy
    , Updator.Email AS UpdatorName
    , Khanas.CreatedAt
    , Khanas.UpdatedAt
FROM [dbo].Khanas
LEFT JOIN Districts
    ON Khanas.DistrictId = Districts.DistrictId
LEFT JOIN Upazilas
    ON Khanas.UpazilaId = Upazilas.UpazilaId
LEFT JOIN Parishes
    ON Khanas.ParishId = Parishes.ParishId
LEFT JOIN ServiceCenters
    ON Khanas.ServiceCenterId = ServiceCenters.ServiceCenterId
LEFT JOIN Villages
    ON Khanas.VillageId = Villages.VillageId
LEFT JOIN Religions
    ON Khanas.ReligionId = Religions.ReligionId
LEFT JOIN Races
    ON Khanas.RaceId = Races.RaceId
LEFT JOIN Users AS Creator
    ON Khanas.CreatedBy = Creator.UserId
LEFT JOIN Users AS Updator
    ON Khanas.UpdatedBy = Updator.UserId
