using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.SocialOrganizations.Models
{
    public class SocialWorkTypeModel : BaseEntity
    {
        public long SocialWorkTypeId { get; set; }
        public string WorkTypeText { get; set; }
    }
}
