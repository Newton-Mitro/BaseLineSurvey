using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyIncome.Models
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 31 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 31 January 2022
    /// Description  : Data model for Income Source Table
    /// </summary>
    public class IncomeSourceModel : BaseEntity
    {
        public Int64 IncomeSourceId { get; set; }
        public string SourceName { get; set; }
    }
}
