using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyExpense.Models
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 03 February 2022
    /// Description  : Data model for Expense Source Table
    /// </summary>
    public class ExpenseSourceModel : BaseEntity
    {
        public Int64 ExpenseSourceId { get; set; }
        public string SourceName { get; set; }
    }
}
