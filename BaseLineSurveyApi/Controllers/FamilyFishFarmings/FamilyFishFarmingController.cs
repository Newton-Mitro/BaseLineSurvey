using DataAccessLib.Base;
using DataAccessLib.FamilyFishFarmings;
using DataAccessLib.FamilyFishFarmings.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyFishFarmings
{
    public class FamilyFishFarmingController : ApiController
    {
        FamilyFishFarmingRepository familyFishFarmingRepository;
        public FamilyFishFarmingController()
        {
            familyFishFarmingRepository = new FamilyFishFarmingRepository();
        }

        [HttpPost]
        public ResponseObject CreateFamilyFishFarming([FromBody] FamilyFishFarmingModel familyFishFarmingModel)
        {
            return familyFishFarmingRepository.CreateFamilyFishFarming(familyFishFarmingModel);
        }

        [HttpPost]
        public ResponseObject UpdateFamilyFishFarming([FromBody] FamilyFishFarmingModel familyFishFarmingModel)
        {
            return familyFishFarmingRepository.UpdateFamilyFishFarming(familyFishFarmingModel);
        }

        [HttpPost]
        public ResponseObject GetFamilyFishFarmingByKhanaId([FromBody] Int64 KhanaId)
        {
            return familyFishFarmingRepository.GetFamilyFishFarmingByKhanaId(KhanaId);
        }
    }
}
