using DataAccessLib.Base;
using DataAccessLib.ChildRightForChild;
using DataAccessLib.ChildRightForChild.Models;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.ChildRightForChild
{
    public class ChildRightForChildController : ApiController
    {
        ChildRightForChildRepository childRightForChildRepository;
        public ChildRightForChildController()
        {
            childRightForChildRepository = new ChildRightForChildRepository();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 January 2022
        /// Description  : Function for creating Or Update Child Right Info
        /// </summary>
        /// <param name="childRightModels">Expect IEnumerable<ChildRightModel></param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateOrUpdateChildRightInfo([FromBody] IEnumerable<ChildRightModel> childRightModels)
        {
            return childRightForChildRepository.CreateOrUpdateChildRightInfo(childRightModels);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 January 2022
        /// Description  : Function for Get Child Right Questions
        /// </summary>
        /// <param name="KhanaId">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetChildRightQuestions([FromBody] Int64 KhanaId)
        {
            return childRightForChildRepository.GetChildRightQuestions(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 January 2022
        /// Description  : Function for getting Child RightOptions By Question Id
        /// </summary>
        /// <param name="childRightModel">Expect ChildRightModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetChildRightOptionsByQuestionId([FromBody] ChildRightModel childRightModel)
        {
            return childRightForChildRepository.GetChildRightOptionsByQuestionId(childRightModel);
        }
    }
}
