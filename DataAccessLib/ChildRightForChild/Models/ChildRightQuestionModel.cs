using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForChild.Models
{
    public class ChildRightQuestionModel : BaseEntity
    {
        public long ChildRightQuestionId { get; set; }
        public string QuestionText { get; set; }
        public bool IsAnswered { get; set; }
    }
}
