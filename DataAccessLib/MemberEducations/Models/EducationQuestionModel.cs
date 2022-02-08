using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class EducationQuestionModel : BaseEntity
    {
        public long EducationQuestionId { get; set; }
        public string QuestionText { get; set; }
    }
}
