using DataAccessLib.Base;
using DataAccessLib.KhanaSection.ServiceCenter;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.KhanaSection
{
    public class ServiceCenterController : ApiController
    {
        public ServiceCenterRepository serviceCenterRepository;
        public ServiceCenterController()
        {
            serviceCenterRepository = new ServiceCenterRepository();
        }

        [HttpPost]
        public ResponseObject GetServiceCentersByParisId([FromBody] Int64 ParishId)
        {
            return serviceCenterRepository.GetServiceCentersByParisId(ParishId);
        }

    }
}
