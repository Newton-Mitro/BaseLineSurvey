using DataAccessLib.Base;

namespace DataAccessLib.MemberEducations.Models
{
    public class EducationOptionModel : BaseEntity
    {
        public long EducationOptionId { get; set; }
        public long EducationQuestionId { get; set; }
        public string OptionText { get; set; }
    }
}
