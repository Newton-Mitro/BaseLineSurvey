using DataAccessLib.Base;

namespace DataAccessLib.MemberDisease.Models
{
    public class DoctorTypeModel : BaseEntity
    {
        public long DoctorTypeCode { get; set; }
        public string DoctorTypeName { get; set; }
    }
}
