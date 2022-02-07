using DataAccessLib.Base;

namespace DataAccessLib.ChildRightForChild.Models
{
    public class ChildRightModel : BaseEntity
    {
        public long ChildRightId { get; set; }
        public long ChildRightQuestionId { get; set; }
        public long ChildRightOptionId { get; set; }
        public long KhanaId { get; set; }
        public long AnswerGivenById { get; set; }
        public long InformationStatusCode { get; set; }
    }
}