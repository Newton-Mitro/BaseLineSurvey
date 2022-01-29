using DataAccessLib.Base;
using DataAccessLib.KhanaSection.District;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers
{
    public class DistrictController : ApiController
    {
        public DistrictRepository _districtRepository;
        public DistrictController()
        {
            _districtRepository = new DistrictRepository();
        }

        [HttpPost]
        public ResponseObject GetDistricts()
        {
            return _districtRepository.GetDistricts();
        }

    }
}
