using DataAccessLib.Base;
using DataAccessLib.FoodSecurities;
using DataAccessLib.FoodSecurities.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FoodAndSaftySection
{
    public class FoodSecurityController : ApiController
    {
        FoodSecurityRepository foodSecurityRepository;
        public FoodSecurityController()
        {
            foodSecurityRepository = new FoodSecurityRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateFoodSecurityInfo([FromBody] FoodSecurityModel foodSecurityModel )
        {
            return foodSecurityRepository.CreateOrUpdateFoodSecurityInfo(foodSecurityModel);
        }

        [HttpPost]
        public ResponseObject GetFoodSecurityInfoByKhanaId([FromBody] Int64 KhanaId)
        {
            return foodSecurityRepository.GetFoodSecurityInfoByKhanaId(KhanaId);
        }
    }
}
