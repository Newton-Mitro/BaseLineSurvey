using DataAccessLib.Base;
using System;

namespace DataAccessLib.MemberSection.GenderSection
{
    public class GenderModelModel : BaseEntity
    {
        public Int64 GerderCode { get; set; }
        public string GenderName { get; set; }
    }
}
