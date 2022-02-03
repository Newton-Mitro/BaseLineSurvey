using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.District
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for District Table
    /// </summary>
    public class DistrictModel : BaseEntity
    {
        public Int64 DistrictId { get; set; }
        public string DistrictName { get; set; }
    }
}
