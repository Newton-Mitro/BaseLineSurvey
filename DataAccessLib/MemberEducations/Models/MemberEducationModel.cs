using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class MemberEducationModel : BaseEntity
    {
        public long MemberEducationId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public string MemberName { get; set; }
        public long EducationQuestionId { get; set; }
        public string QuestionText { get; set; }
        public long EducationOptionId { get; set; }
        public string OptionText { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
