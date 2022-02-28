using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons.Models
{
    public class DefaulderReasonModel : BaseEntity
    {
        public long DefaulderReasonId { get; set; }
        public string DefaulderReasonText { get; set; }
    }
}
