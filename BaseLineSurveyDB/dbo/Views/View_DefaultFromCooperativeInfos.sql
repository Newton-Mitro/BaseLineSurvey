CREATE VIEW [dbo].[View_DefaultFromCooperativeInfos]
	AS SELECT DefaultFromCooperativeInfos.*
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.DefaultFromCooperativeInfos
LEFT JOIN View_Khanas
    ON DefaultFromCooperativeInfos.KhanaId = View_Khanas.KhanaId;
