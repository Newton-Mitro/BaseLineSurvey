using DataAccessLib.Base;
using DataAccessLib.FoodSecurities;
using DataAccessLib.FoodSecurities.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FoodAndSaftySection
{
    public class FoodShortageMonthController : ApiController
    {
        FoodShortageMonthRepository foodShortageMonthRepository;
        public FoodShortageMonthController()
        {
            foodShortageMonthRepository = new FoodShortageMonthRepository();
        }

        [HttpPost]
        public ResponseObject CreateFoodShortageMonth([FromBody] FoodShortageMonthModel foodShortageMonthModel)
        {
            return foodShortageMonthRepository.CreateFoodShortageMonth(foodShortageMonthModel);
        }

        [HttpPost]
        public ResponseObject DeleteFoodShortageMonth([FromBody] Int64 FoodShortageMonthId)
        {
            return foodShortageMonthRepository.DeleteFoodShortageMonth(FoodShortageMonthId);
        }

        [HttpPost]
        public ResponseObject GetFoodShortageMonthsByKhanaId([FromBody] Int64 KhanaId)
        {
            return foodShortageMonthRepository.GetFoodShortageMonthsByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetMonths()
        {
            return foodShortageMonthRepository.GetMonths();
        }
    }
}
