using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Village;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.KhanaSection
{
    public class VillageController : ApiController
    {
        public VillageRepository villageRepository;
        public VillageController()
        {
            villageRepository = new VillageRepository();
        }

        [HttpPost]
        public ResponseObject GetVillagesByParishesServicentersId([FromBody] Int64 ParishesServicentersId)
        {
            return villageRepository.GetVillagesByParishesServicentersId(ParishesServicentersId);
        }

    }
}
