CREATE VIEW [dbo].[View_MemberDiseases]
	AS SELECT MemberDiseases.*
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.MemberDiseases
LEFT JOIN View_Khanas
    ON MemberDiseases.KhanaId = View_Khanas.KhanaId;
