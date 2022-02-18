using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForParentSection.Models
{
    public class ParentResponsibilityToChildModel : BaseEntity
    {
        public long ParentsResponsibilityToChildId { get; set; }
        public long ParentResponsibilityQuestionId { get; set; }
        public long ParentResponsibilityOptionId { get; set; }
        public long KhanaId { get; set; }
        public long AnswerGivenById { get; set; }
        public long InformationStatusCode { get; set; }
    }
}
