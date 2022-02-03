using DataAccessLib.Base;
using DataAccessLib.FamilyExpense;
using DataAccessLib.FamilyExpense.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyExpenseSection
{
    public class FamilyExpenseController : ApiController
    {
        FamilyExpenseRepository familyExpenseRepository;

        public FamilyExpenseController()
        {
            familyExpenseRepository = new FamilyExpenseRepository();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 January 2022
        /// Description  : Function for creating family expense
        /// </summary>
        /// <param name="familyExpenseModel">Expect FamilyExpenseModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateFamilyExpense([FromBody] FamilyExpenseModel familyExpenseModel)
        {
            return familyExpenseRepository.CreateFamilyExpense(familyExpenseModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 January 2022
        /// Description  : Function for deleting family expense
        /// </summary>
        /// <param name="FamilyExpenseId">Expect FamilyExpenseId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject DeleteFamilyExpenseById([FromBody] Int64 FamilyExpenseId)
        {
            return familyExpenseRepository.DeleteFamilyExpenseById(FamilyExpenseId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 January 2022
        /// Description  : Function for getting family expense
        /// </summary>
        /// <param name="familyIncomeModel">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetFamilyExpenseByKhanaId([FromBody] Int64 KhanaId)
        {
            return familyExpenseRepository.GetFamilyExpenseByKhanaId(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 January 2022
        /// Description  : Function for getting Expense Source
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetExpenseSources()
        {
            return familyExpenseRepository.GetExpenseSources();
        }
    }
}
