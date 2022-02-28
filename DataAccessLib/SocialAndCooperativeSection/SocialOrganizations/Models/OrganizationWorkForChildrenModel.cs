using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.SocialOrganizations.Models
{
    public class OrganizationWorkForChildrenModel : BaseEntity
    {
        public long OrganizationWorkForChildrenId { get; set; }
        public long VillageId { get; set; }
        public long SocialWorkTypeId { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
