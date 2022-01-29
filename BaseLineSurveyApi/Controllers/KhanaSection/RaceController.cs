using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Race;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.KhanaSection
{
    public class RaceController : ApiController
    {
        public RaceRepository raceRepository;
        public RaceController()
        {
            raceRepository = new RaceRepository();
        }

        //-- =========================================================================
        //-- Author       : Newton Mitro
        //-- Create date  : January 29, 2022
        //-- Description  : Function for Getting Khana by user id
        //-- Version      : 1.0
        //-- ============================================================================
        [HttpPost]
        public ResponseObject GetRaces()
        {
            return raceRepository.GetRaces();
        }
        
    }
}
