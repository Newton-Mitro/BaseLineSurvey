using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForParentSection.Models
{
    public class ParentResponsibilityOptionModel : BaseEntity
    {
        public long ParentResponsibilityOptionId { get; set; }
        public long ParentResponsibilityQuestionId { get; set; }
        public string QuestionText { get; set; }
    }
}
