using DataAccessLib.Base;

namespace DataAccessLib.MemberDisease.Models
{
    public class TreatmentCenterModel : BaseEntity
    {
        public long TreatmentCentercode { get; set; }
        public string TreatmentCenterName { get; set; }
    }
}
