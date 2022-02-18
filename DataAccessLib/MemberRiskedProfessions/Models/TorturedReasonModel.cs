using DataAccessLib.Base;

namespace DataAccessLib.MemberRiskedProfessions.Models
{
    public class TorturedReasonModel : BaseEntity
    {
        public long TorturedRessonCode { get; set; }
        public string TorturedReasionText { get; set; }
    }
}