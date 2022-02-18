using DataAccessLib.Base;
using DataAccessLib.FoodSecurities;
using DataAccessLib.FoodSecurities.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FoodAndSaftySection
{
    public class RunFamilyWhenShortageController : ApiController
    {
        RunFamilyWhenShortageRepository runFamilyWhenShortageRepository;
        public RunFamilyWhenShortageController()
        {
            runFamilyWhenShortageRepository = new RunFamilyWhenShortageRepository();
        }

        [HttpPost]
        public ResponseObject CreateRunFamilyWhenShortage([FromBody] RunFamilyWhenShortageModel runFamilyWhenShortageModel)
        {
            return runFamilyWhenShortageRepository.CreateRunFamilyWhenShortage(runFamilyWhenShortageModel);
        }

        [HttpPost]
        public ResponseObject DeleteRunFamilyWhenShortage([FromBody] Int64 RunFamilyWhenShortId)
        {
            return runFamilyWhenShortageRepository.DeleteRunFamilyWhenShortage(RunFamilyWhenShortId);
        }

        [HttpPost]
        public ResponseObject GetRunFamilyWhenShortageByKhanaId([FromBody] Int64 KhanaId)
        {
            return runFamilyWhenShortageRepository.GetRunFamilyWhenShortageByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetShortageSolutions()
        {
            return runFamilyWhenShortageRepository.GetShortageSolutions();
        }
    }
}
