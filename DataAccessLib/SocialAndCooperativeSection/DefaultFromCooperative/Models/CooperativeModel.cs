using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative.Models
{
    public class CooperativeModel : BaseEntity
    {
        public long CooperativeId { get; set; }
        public string CooperativeName { get; set; }
    }
}
