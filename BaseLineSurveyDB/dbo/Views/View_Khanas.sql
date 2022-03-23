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
SELECT Khanas.*
    , Districts.DistrictName
    , Upazilas.UpazilaName
    , Parishes.ParishName
    , ServiceCenters.ServiceCenterName
    , Villages.VillageName
    , Religions.ReligionName
    , Races.RaceName
    , InformationStatuses.InformationStatusName
    , Members.MemberName AS AnswerGiverName
    , Creator.FullName AS CreatorName
    , Updator.FullName AS UpdatorName
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
LEFT JOIN dbo.InformationStatuses
    ON Khanas.InformationStatusCode = InformationStatuses.InformationStatusCode
LEFT JOIN dbo.Members
    ON Khanas.AnswerGivenBy = Members.MemberId