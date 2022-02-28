using DataAccessLib.Base;

namespace DataAccessLib.MemberIncomeRelatedWorkSection.Models
{
    public class MemberIncomeRelatedWorkModel : BaseEntity
    {
        public long MemberIncomeRelatedWorkId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long IncomeRelatedWorkId { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
