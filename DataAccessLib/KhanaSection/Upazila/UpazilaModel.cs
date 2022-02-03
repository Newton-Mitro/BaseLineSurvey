using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Upazila
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Upazila Table
    /// </summary>
    public class UpazilaModel : BaseEntity
    {
        public Int64 UpazilaId { get; set; }
        public Int64 DistrictId { get; set; }
        public string UpazilaName { get; set; }
    }
}
