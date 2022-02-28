using DataAccessLib.Base;

namespace DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative.Models
{
    public class DefaultFromCooperativeModel : BaseEntity
    {
        public long CooperativeInfoId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }
        public long CooperativeId { get; set; }
        
    }
}
