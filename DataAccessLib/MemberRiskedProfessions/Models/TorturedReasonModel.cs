using DataAccessLib.Base;

namespace DataAccessLib.MemberRiskedProfessions.Models
{
    public class TorturedReasonModel : BaseEntity
    {
        public long TorturedReasonCode { get; set; }
        public string TorturedReasonText { get; set; }
    }
}