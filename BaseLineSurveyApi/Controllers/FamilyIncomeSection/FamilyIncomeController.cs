using DataAccessLib.Base;
using DataAccessLib.FamilyIncome;
using DataAccessLib.FamilyIncome.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyIncomeSection
{

    public class FamilyIncomeController : ApiController
    {
        FamilyIncomeRepository familyIncomeRepository;

        public FamilyIncomeController()
        {
            familyIncomeRepository = new FamilyIncomeRepository();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 January 2022
        /// Description  : Function for creating family income
        /// </summary>
        /// <param name="familyIncomeModel">Expect FamilyIncomeModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateFamilysIncome([FromBody] FamilyIncomeModel familyIncomeModel)
        {
            return familyIncomeRepository.CreateFamilyIncome(familyIncomeModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 January 2022
        /// Description  : Function for deleting family income
        /// </summary>
        /// <param name="familyIncomeModel">Expect FamilyIncomeId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject DeleteFamilyIncomeById([FromBody] Int64 FamilyIncomeId)
        {
            return familyIncomeRepository.DeleteFamilyIncomeById(FamilyIncomeId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 January 2022
        /// Description  : Function for getting family incomes
        /// </summary>
        /// <param name="familyIncomeModel">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetFamilyIncomeByKhanaId([FromBody] Int64 KhanaId)
        {
            return familyIncomeRepository.GetFamilyIncomeByKhanaId(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 January 2022
        /// Description  : Function for getting Income Source
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetIncomeSources()
        {
            return familyIncomeRepository.GetIncomeSources();
        }

    }
}
