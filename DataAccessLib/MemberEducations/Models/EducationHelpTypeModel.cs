using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class EducationHelpTypeModel : BaseEntity
    {
        public long EducationHelpTypeCode { get; set; }
        public string HelpTypeName { get; set; }
    }
}
