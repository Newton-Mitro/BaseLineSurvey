using DataAccessLib.Base;

namespace DataAccessLib.MemberDisease.Models
{
    public class MemberDiseaseModel : BaseEntity
    {
        public long MemberDiseasId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long DiseaseCode { get; set; }
        public long TreatmentCentercode { get; set; }
        public long DoctorTypeCode { get; set; }
        public long FirstTreatmentFrom { get; set; }
        public long InformationStatusCode { get; set; }
        public int IfCovid_NumberOfDose { get; set; }
    }
}
