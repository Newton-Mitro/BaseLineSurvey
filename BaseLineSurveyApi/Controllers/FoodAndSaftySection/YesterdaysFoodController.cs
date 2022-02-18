using DataAccessLib.Base;
using DataAccessLib.FoodSecurities;
using DataAccessLib.FoodSecurities.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FoodAndSaftySection
{
    public class YesterdaysFoodController : ApiController
    {
        YesterdaysFoodRepository yesterdaysFoodRepository;
        public YesterdaysFoodController()
        {
            yesterdaysFoodRepository = new YesterdaysFoodRepository();
        }

        [HttpPost]
        public ResponseObject CreateYesterdaysFood([FromBody] YesterdaysFoodModel yesterdaysFoodModel)
        {
            return yesterdaysFoodRepository.CreateYesterdaysFood(yesterdaysFoodModel);
        }

        [HttpPost]
        public ResponseObject DeleteYesterdaysFood([FromBody] Int64 YesterdaysFoodIdId)
        {
            return yesterdaysFoodRepository.DeleteYesterdaysFood(YesterdaysFoodIdId);
        }

        [HttpPost]
        public ResponseObject GetYesterdaysFoodByKhanaId([FromBody] Int64 KhanaId)
        {
            return yesterdaysFoodRepository.GetYesterdaysFoodByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetFoods()
        {
            return yesterdaysFoodRepository.GetFoods();
        }
    }
}
