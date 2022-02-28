using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions.Models
{
    public class CooperativeQuestionModel : BaseEntity
    {
        public long QuestionId { get; set; }
        public string QuestionText { get; set; }
    }
}

