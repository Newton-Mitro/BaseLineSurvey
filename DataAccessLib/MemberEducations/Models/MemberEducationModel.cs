using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class MemberEducationModel : BaseEntity
    {
        public long MemberEducationId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long EducationalStatusCode { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
