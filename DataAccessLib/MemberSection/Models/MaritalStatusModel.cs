using DataAccessLib.Base;

namespace DataAccessLib.MemberSection.MaritalStatusSection
{
    public class MaritalStatusModel : BaseEntity
    {
        public long MaritalStatusCode { get; set; }
        public string MaritalStatusName { get; set; }
    }
}
