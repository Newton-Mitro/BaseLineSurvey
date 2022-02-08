using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class EducationHelpInfoModel : BaseEntity
    {
        public long MemberEducationHelpId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public string MemberName { get; set; }
        public long HelpOrganizationCode { get; set; }
        public string HelpingOrganizationName { get; set; }
        public long EducationHelpTypeCode { get; set; }
        public string HelpTypeName { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
