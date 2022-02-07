using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class DropOutReasonModel : BaseEntity
    {
        public long DropOutReasonCode { get; set; }
        public string DropOutReasonText { get; set; }
    }
}
