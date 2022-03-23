/*
Script View_Members
--------------------------------------------------------------------------------------
Script By                     : Newton Mitro
Created At                    : 02 February 2022
Script Altered By             : Newton Mitro
Altered At                    : 02 February 2022
Script Description            : This Script will create View_Members.
--------------------------------------------------------------------------------------
*/
CREATE VIEW dbo.View_Members
AS
SELECT Members.*
    , (DATEDIFF(M, Members.DateOfBirth, GETDATE()) / 12) AS Age
    , (DATEDIFF(M, Members.DateOfBirth, GETDATE())) AS AgeInMonth
    , Relationships.RelationshipName AS RelationWithFamilyHeadName
    , Genders.GenderName
    , FirstProfessions.ProfessionName AS FirstProfessionName
    , SecondProfessions.ProfessionName AS SecondProfessionName
    , EducationalStatuses.EducationName AS EducationalStatusName
    , MaritalStatuses.MaritalStatusName
    , DisabaledTypes.DisabledTypeName
    , InformationStatuses.InformationStatusName
    , View_Khanas.DistrictId
    , View_Khanas.DistrictName
    , View_Khanas.ServiceCenterId
    , View_Khanas.ServiceCenterName
    , View_Khanas.ParishId
    , View_Khanas.ParishName
    , View_Khanas.VillageId
    , View_Khanas.VillageName
FROM dbo.Members
LEFT JOIN Relationships
    ON Members.RelationWithFamilyHeadId = Relationships.RelationshipCode
LEFT JOIN Genders
    ON Members.GenderCode = Genders.GerderCode
LEFT JOIN Professions AS FirstProfessions
    ON Members.FirstProfessionCode = FirstProfessions.ProfessionCode
LEFT JOIN Professions AS SecondProfessions
    ON Members.SecondProfessionCode = SecondProfessions.ProfessionCode
LEFT JOIN EducationalStatuses
    ON Members.EducationalStatusCode = EducationalStatuses.EducationalStatusCode
LEFT JOIN MaritalStatuses
    ON Members.MaritalStatusCode = MaritalStatuses.MaritalStatusCode
LEFT JOIN DisabaledTypes
    ON Members.DisabledTypeCode = DisabaledTypes.DisabledTypeCode
LEFT JOIN InformationStatuses
    ON Members.InformationStatusCode = InformationStatuses.InformationStatusCode
LEFT JOIN View_Khanas
    ON Members.KhanaId = View_Khanas.KhanaId;