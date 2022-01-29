using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.District
{
    public class District : BaseEntity
    {
        public Int64 DistrictId { get; set; }
        public string DistrictName { get; set; }
    }
}
