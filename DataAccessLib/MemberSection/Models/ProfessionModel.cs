using DataAccessLib.Base;

namespace DataAccessLib.MemberSection.ProfessionSection
{
    public class ProfessionModel : BaseEntity
    {
        public long ProfessionCode { get; set; }
        public string ProfessionName { get; set; }
    }
}
