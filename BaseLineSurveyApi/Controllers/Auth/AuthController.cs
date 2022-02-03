using BaseLineSurveyWebApi.Common;
using BaseLineSurveyWebAPI.Common;
using DataAccessLib.Auth;
using DataAccessLib.Base;
using System;
using System.Configuration;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.Auth
{
    public class AuthController : ApiController
    {
        public AuthRepository _loginRepository;
        public AuthController()
        {
            _loginRepository = new AuthRepository();
        }

        [HttpPost]
        public HttpResponseMessage AuthenticateUser(UserModel user)
        {
            try
            {
               
                var response =  _loginRepository.AuthenticateUser(user);
                if (response != null && response.Message == "Success")
                {
                    var oResponse = Request.CreateResponse(HttpStatusCode.OK, new ResponseObject { Data = response.Data, Message = response.Message });
                    return GenerateAndSaveToken(Convert.ToInt32(user.UserId), oResponse);
                }
                return Request.CreateResponse(HttpStatusCode.OK, new ResponseObject { Data = response.Data, Message = response.Message });

            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.OK, new ResponseObject { Data = "Failed", Message = Convert.ToString(ex) });
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for creating new user account
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseObject RegisterNewUser(UserModel user)
        {
            return _loginRepository.RegisterNewUser(user);
        }

        [NonAction]
        private HttpResponseMessage GenerateAndSaveToken(int userId, HttpResponseMessage response)
        {
            try
            {
                var issuedOn = DateTime.Now;
                var newToken = GenerateToken(userId, issuedOn);
                var token = new TokenModel();
                token.TokenID = 0;
                token.TokenKey = newToken;
                token.IssuedOn = issuedOn;
                token.ExpiresOn = DateTime.Now.AddMinutes(Convert.ToInt32(ConfigurationManager.AppSettings["TokenExpiry"]));
                token.CreatedOn = DateTime.Now;
                token.UserId = userId;
                ResponseObject result = _loginRepository.SaveToken(token);
                if (result.Message == "Success")
                {
                    response.Headers.Add("Token", newToken);
                    response.Headers.Add("TokenExpiry", ConfigurationManager.AppSettings["TokenExpiry"]);
                    response.Headers.Add("Access-Control-Expose-Headers", "Token,TokenExpiry");
                    return response;
                }
                var message = new HttpResponseMessage(HttpStatusCode.NotAcceptable);
                message.Content = new StringContent("Error in Creating Token");
                return message;
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.InternalServerError, new ResponseObject { Data = ex.ToString() });
            }
        }


        [NonAction]
        public string GenerateToken(long userId, DateTime issuedOn)
        {
            try
            {
                Type myType = typeof(WebApiConfig);
                var myNamespace = myType.Namespace;

                string protocol = HttpContext.Current.Request.IsSecureConnection ? "https://" : "http://";
                string apiUrl = protocol + HttpContext.Current.Request.Url.Authority;

                string randomnumber =
                 string.Join("|", new string[]{
           Convert.ToString(userId),
           KeyGenerator.GetUniqueKey(),
           myNamespace,
           apiUrl,
           Convert.ToString(issuedOn.Ticks)
                 });

                return PasswordHash.EncryptText(randomnumber);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
