using DataAccessLib.Base;
using DataAccessLib.KhanaSection.Khana;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers
{
    public class KhanaController : ApiController
    {
        public KhanaRepository KhanaRepository;
        public KhanaController()
        {
            KhanaRepository = new KhanaRepository();
        }
        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create date  : January 27, 2022
        //-- Description  : Function for Getting Khana by user id
        //-- Version      : 1.0
        //-- ============================================================================
        [HttpPost]
        public ResponseObject GetKhanasByUserId([FromBody] BasicModel Data)
        {
            return KhanaRepository.GetKhanasByUserId(Data);
        }

        [HttpPost]
        public ResponseObject CreateKhana([FromBody] KhanaModel khana)
        {
            return KhanaRepository.CreateKhana(khana);
        }
    }
}