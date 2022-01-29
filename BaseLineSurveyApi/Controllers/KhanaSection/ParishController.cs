using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Parish;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers
{
    public class ParishController : ApiController
    {
        public ParishRepository parishRepository;
        public ParishController()
        {
            parishRepository = new ParishRepository();
        }

        [HttpPost]
        public ResponseObject GetParishesByUpazilaId([FromBody] Int64 UpazialId)
        {
            return parishRepository.GetParishesByUpazilaId(UpazialId);
        }

  
    }
}
