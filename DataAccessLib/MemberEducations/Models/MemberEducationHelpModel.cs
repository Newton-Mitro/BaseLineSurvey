using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class MemberEducationHelpModel : BaseEntity
    {
        public long MemberEducationHelpId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long HelpOrganizationCode { get; set; }
        public long EducationHelpTypeCode { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
