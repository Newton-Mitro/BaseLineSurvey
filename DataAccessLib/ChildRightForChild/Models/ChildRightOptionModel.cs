using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForChild.Models
{
    public class ChildRightOptionModel : BaseEntity
    {
        public long ChildRightOptionId { get; set; }
        public long ChildRightQuestionId { get; set; }
        public string OptionText { get; set; }
    }
}
