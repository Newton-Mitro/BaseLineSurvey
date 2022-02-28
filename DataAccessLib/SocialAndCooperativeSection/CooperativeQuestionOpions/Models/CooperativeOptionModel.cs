using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions.Models
{
    public class CooperativeOptionModel : BaseEntity
    {
        public long OptionId { get; set; }
        public long QuestionId { get; set; }
        public string OptionText { get; set; }
    }
}
