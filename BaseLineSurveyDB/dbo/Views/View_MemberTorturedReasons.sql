CREATE VIEW [dbo].[View_MemberTorturedReasons]
	AS SELECT MemberTorturedReasons.*
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.MemberTorturedReasons
LEFT JOIN View_Khanas
    ON MemberTorturedReasons.KhanaId = View_Khanas.KhanaId;