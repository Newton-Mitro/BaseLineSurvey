using DataAccessLib.Base;

namespace DataAccessLib.MemberRiskedProfessions.Models
{
    public class MemberTorturedReasonModel : BaseEntity
    {
        public long MemberTorturedReasionId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long TorturedReasonCode { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
