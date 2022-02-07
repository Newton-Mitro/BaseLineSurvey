using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForParentSection.Models
{
    public class ParentResponsibilityQuestionModel : BaseEntity
    {
        public long ParentResponsibilityQuestionId { get; set; }
        public string QuestionText { get; set; }
        public bool IsAnswered { get; set; }
    }
}