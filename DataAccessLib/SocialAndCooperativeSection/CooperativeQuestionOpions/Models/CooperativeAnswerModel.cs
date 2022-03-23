using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions.Models
{
    public class CooperativeAnswerModel : BaseEntity
    {
        public long CooperativeAnswerId { get; set; }
        public long KhanaId { get; set; }
        public long QuestionId { get; set; }
        public long OptionId { get; set; }
       
    }
}
