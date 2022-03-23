CREATE VIEW [dbo].[View_MemberIncomeRelatedWorks]
	AS SELECT MemberIncomeRelatedWorks.*
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.MemberIncomeRelatedWorks
LEFT JOIN View_Khanas
    ON MemberIncomeRelatedWorks.KhanaId = View_Khanas.KhanaId;