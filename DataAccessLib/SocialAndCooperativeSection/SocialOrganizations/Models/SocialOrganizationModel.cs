using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.SocialOrganizations.Models
{
    public class SocialOrganizationModel : BaseEntity
    {
        public long SocialOrganizationId { get; set; }
        public long VillageId { get; set; }
        public string OrganizationName { get; set; }
        public bool WorkForChildern { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
