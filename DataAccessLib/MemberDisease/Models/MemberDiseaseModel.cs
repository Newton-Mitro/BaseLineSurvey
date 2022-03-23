using DataAccessLib.Base;

namespace DataAccessLib.MemberDisease.Models
{
    public class MemberDiseaseModel : BaseEntity
    {
        public long MemberDiseasId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public string MemberName { get; set; }
        public long DiseaseCode { get; set; }
        public string DiseaseName { get; set; }
        public long TreatmentCenterCode { get; set; }
        public string TreatmentCenterName { get; set; }
        public long DoctorTypeCode { get; set; }
        public string DoctorTypeName { get; set; }
        public long FirstTreatmentFromCode { get; set; }
        public string FirstTreatmentCenterName { get; set; }
        public long InformationStatusCode { get; set; }
        public int IfCovid_NumberOfDose { get; set; }
        public string InformationStatusName { get; set; }
    }
}
