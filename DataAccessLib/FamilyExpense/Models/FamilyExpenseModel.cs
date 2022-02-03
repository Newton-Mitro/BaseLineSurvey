using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyExpense.Models
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 03 February 2022
    /// Description  : Data model for Family Expense Table
    /// </summary>
    public class FamilyExpenseModel : BaseEntity
    {
        public Int64 FamilyExpenseId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 ExpenseSourceId { get; set; }
        public string SourceName { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public decimal AnnualExpenseAmount { get; set; }
    }
}
