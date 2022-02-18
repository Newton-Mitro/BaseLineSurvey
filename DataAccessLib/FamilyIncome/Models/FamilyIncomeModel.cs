using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyIncome.Models
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 31 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 31 January 2022
    /// Description  : Data model for Family Income Table
    /// </summary>
    public class FamilyIncomeModel : BaseEntity
    {
        public Int64 FamilyIncomeId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 IncomeSourceId { get; set; }
        public string SourceName { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
        public decimal AnnualIncomeAmount { get; set; }
        public decimal ProductionCost { get; set; }
    }
}

