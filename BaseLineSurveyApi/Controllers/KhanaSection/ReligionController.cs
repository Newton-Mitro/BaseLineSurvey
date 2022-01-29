using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Religion;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.KhanaSection
{
    public class ReligionController : ApiController
    {
        public ReligionRepository religionRepository;

        public ReligionController()
        {
            religionRepository = new ReligionRepository();
        }

        [HttpPost]
        public ResponseObject GetReligions()
        {
            return religionRepository.GetReligions();
        }

    }
}
