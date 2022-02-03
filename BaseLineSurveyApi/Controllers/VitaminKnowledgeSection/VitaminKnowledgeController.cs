using DataAccessLib.Base;
using DataAccessLib.VitaminKhowledgeSection.VitaminKnowledgeQuestion;
using DataAccessLib.VitaminKhowledgeSection.VitaminKnowledges;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.VitaminKnowledgeSection
{
    public class VitaminKnowledgeController : ApiController
    {
        VitaminKnowledgeRepository vitaminKnowledgeRepository;
        public VitaminKnowledgeController()
        {
            vitaminKnowledgeRepository = new VitaminKnowledgeRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateVitaminKnowledge([FromBody] VitaminKnowledgeModel vitaminKnowledgeModel)
        {
            return vitaminKnowledgeRepository.CreateOrUpdateVitaminKnowledge(vitaminKnowledgeModel);
        }

        [HttpPost]
        public ResponseObject GetVitaminKnowledgeOptionsWithSelectedOption([FromBody] VitaminKnowledgeModel vitaminKnowledgeModel)
        {
            return vitaminKnowledgeRepository.GetVitaminKnowledgeOptionsWithSelectedOption(vitaminKnowledgeModel);
        }

        [HttpPost]
        public ResponseObject GetVitaminKnowledgeQuestions([FromBody] Int64 KhanaId)
        {
            return vitaminKnowledgeRepository.GetVitaminKnowledgeQuestions(KhanaId);
        }
    }
}
