using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Upazila;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers
{
    public class UpazilaController : ApiController
    {
        
        public UpazilaRepository upazilaRepository;
        public UpazilaController()
        {
            upazilaRepository = new UpazilaRepository();
        }

        [HttpPost]
        public ResponseObject GetUpazilasByDistrictId([FromBody] Int64 DistrictId)
        {
            return upazilaRepository.GetUpazilasByDistrictId(DistrictId);
        }
    }
}
