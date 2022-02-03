using DataAccessLib.Base;
using DataAccessLib.ToiletAndWaterSection.ToiletAndWaterInfo;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.ToiletAndWaterSection.ToiletAndWaterInfo
{
    public class ToiletAndWaterInfoController : ApiController
    {
        ToiletAndWaterInfoRepository toiletAndWaterInfoRepository;
        public ToiletAndWaterInfoController()
        {
            toiletAndWaterInfoRepository = new ToiletAndWaterInfoRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateToiletAndWaterInfo([FromBody] ToiletAndWaterInfoModel toiletAndWaterInfo)
        {
            return toiletAndWaterInfoRepository.CreateOrUpdateToiletAndWaterInfo(toiletAndWaterInfo);
        }

        [HttpPost]
        public ResponseObject GetToiletAndWaterOptionsWithSelectedOption([FromBody] ToiletAndWaterInfoModel toiletAndWaterInfo)
        {
            return toiletAndWaterInfoRepository.GetToiletAndWaterOptionsWithSelectedOption(toiletAndWaterInfo);
        }

        [HttpPost]
        public ResponseObject GetToiletAndWaterQuestions([FromBody] Int64 KhanaId)
        {
            return toiletAndWaterInfoRepository.GetToiletAndWaterQuestions(KhanaId);
        }
    }
}
