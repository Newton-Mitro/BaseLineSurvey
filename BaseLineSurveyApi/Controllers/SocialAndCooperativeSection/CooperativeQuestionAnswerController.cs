using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions;
using DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions.Models;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.SocialAndCooperativeSection
{
    public class CooperativeQuestionAnswerController : ApiController
    {
        CooperativeQuestionOptionRepository cooperativeQuestionOptionRepository;
        public CooperativeQuestionAnswerController()
        {
            cooperativeQuestionOptionRepository = new CooperativeQuestionOptionRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateCooperativeAnswer([FromBody] IEnumerable<CooperativeAnswerModel> cooperativeAnswerModel)
        {
            return cooperativeQuestionOptionRepository.CreateOrUpdateCooperativeAnswer(cooperativeAnswerModel);
        }

        [HttpPost]
        public ResponseObject GetCooperativeQuestionsAndOptions()
        {
            return cooperativeQuestionOptionRepository.GetCooperativeQuestionsAndOptions();
        }

        [HttpPost]
        public ResponseObject GetCooperativeAnswersByKhanaId([FromBody] Int64 KhanaId)
        {
            return cooperativeQuestionOptionRepository.GetCooperativeAnswersByKhanaId(KhanaId);
        }
    }
}
