using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Religion
{
    public class Religion : BaseEntity
    {
        public Int64 ReligionId { get; set; }
        public string ReligionName { get; set; }
    }
}
