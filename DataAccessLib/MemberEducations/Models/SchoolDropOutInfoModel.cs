using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class SchoolDropOutInfoModel : BaseEntity
    {
        public long SchoolDropoutId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long DropOutReasonCode { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
