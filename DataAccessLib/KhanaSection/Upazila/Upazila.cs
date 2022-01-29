using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Upazila
{
    public class Upazila : BaseEntity
    {
        public Int64 UpazilaId { get; set; }
        public Int64 DistrictId { get; set; }
        public string UpazilaName { get; set; }
    }
}
