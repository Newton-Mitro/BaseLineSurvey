using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative;
using DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative.Models;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.SocialAndCooperativeSection
{
    public class DefaultFromCooperativeController : ApiController
    {
        DefaultFromCooperativeRepository defaultFromCooperativeRepository;
        public DefaultFromCooperativeController()
        {
            defaultFromCooperativeRepository = new DefaultFromCooperativeRepository();
        }

        [HttpPost]
        public ResponseObject CreateDefaultFromCooperativeInfo([FromBody] IEnumerable<DefaultFromCooperativeModel> defaultFromCooperativeModels)
        {
            return defaultFromCooperativeRepository.CreateDefaultFromCooperativeInfo(defaultFromCooperativeModels);
        }

        [HttpPost]
        public ResponseObject GetDefaultFromCooperativeInfosByKhanaAndMemberId([FromBody] DefaultFromCooperativeModel defaultFromCooperativeModel)
        {
            return defaultFromCooperativeRepository.GetDefaultFromCooperativeInfosByKhanaAndMemberId(defaultFromCooperativeModel);
        }

        [HttpPost]
        public ResponseObject GetCooperatives()
        {
            return defaultFromCooperativeRepository.GetCooperatives();
        }
    }
}
