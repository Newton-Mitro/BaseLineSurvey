using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons.Models
{
    public class FamilyMemberDefaulderReasonModel : BaseEntity
    {
        public long FamilyMemberDefaulderReasonId { get; set; }
        public long KhanaId { get; set; }
        public long DefaulderReasonId { get; set; }
       
    }
}
