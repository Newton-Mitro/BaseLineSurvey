using DataAccessLib.Base;
using DataAccessLib.ChildRightForParentSection;
using DataAccessLib.ChildRightForParentSection.Models;
using System;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.ChildRightForParentSection
{
    public class ChildRightForParentController : ApiController
    {
        ParentResponsibilityToChildRepository parentResponsibilityToChildRepository;
        public ChildRightForParentController()
        {
            parentResponsibilityToChildRepository = new ParentResponsibilityToChildRepository();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for creating Parent Responsibility To Child
        /// </summary>
        /// <param name="parentResponsibilityToChildModel">Expect ParentResponsibilityToChildModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateOrUpdateParentResponsibilityToChild([FromBody] IEnumerable<ParentResponsibilityToChildModel> parentResponsibilityToChildModels)
        {
            return parentResponsibilityToChildRepository.CreateOrUpdateParentResponsibilityToChild(parentResponsibilityToChildModels);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for Get Paren tResponsibility Questions
        /// </summary>
        /// <param name="KhanaId">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetParentResponsibilityQuestions([FromBody] Int64 KhanaId)
        {
            return parentResponsibilityToChildRepository.GetParentResponsibilityQuestions(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for getting Parent Responsibility Options
        /// </summary>
        /// <param name="parentResponsibilityToChildModel">Expect ParentResponsibilityToChildModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetParentResponsibilityOptions([FromBody] ParentResponsibilityToChildModel parentResponsibilityToChildModel)
        {
            return parentResponsibilityToChildRepository.GetParentResponsibilityOptions(parentResponsibilityToChildModel);
        }
    }
}
