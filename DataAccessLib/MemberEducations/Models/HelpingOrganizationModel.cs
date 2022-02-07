using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class HelpingOrganizationModel : BaseEntity
    {
        public long HelpingOrganizationCode { get; set; }
        public string HelpingOrganizationName { get; set; }
    }
}
