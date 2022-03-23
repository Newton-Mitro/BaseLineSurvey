CREATE VIEW [dbo].[View_SchoolDropouts]
	AS SELECT SchoolDropouts.*
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.SchoolDropouts
LEFT JOIN View_Khanas
    ON SchoolDropouts.KhanaId = View_Khanas.KhanaId;