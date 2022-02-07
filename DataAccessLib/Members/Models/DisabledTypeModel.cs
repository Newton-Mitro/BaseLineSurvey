using DataAccessLib.Base;
using System;

namespace DataAccessLib.MemberSection.DisabledTypeSection
{
    public class DisabledTypeModel : BaseEntity
    {
        public Int64 DisabledTypeCode { get; set; }
        public string DisabledTypeName { get; set; }
    }
}
