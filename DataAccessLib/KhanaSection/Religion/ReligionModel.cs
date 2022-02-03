using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Religion
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Religion Table
    /// </summary>
    public class ReligionModel : BaseEntity
    {
        public Int64 ReligionId { get; set; }
        public string ReligionName { get; set; }
    }
}
