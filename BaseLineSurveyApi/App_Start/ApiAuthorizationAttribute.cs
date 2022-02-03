using BaseLineSurveyWebAPI.Common;
using DataAccessLib.Auth;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;

namespace BaseLineSurveyApi.App_Start
{
    public class ApiAuthorizationAttribute : AuthorizeAttribute
    {
        public override void OnAuthorization(HttpActionContext filterContext)
        {
            if (Authorize(filterContext))
            {
                return;
            }
            HandleUnauthorizedRequest(filterContext);
        }
        protected override void HandleUnauthorizedRequest(HttpActionContext filterContext)
        {
            //base.HandleUnauthorizedRequest(filterContext);
            filterContext.Response = filterContext.Request.CreateResponse(HttpStatusCode.OK, new ResponseObject { Message = "Authorization has been denied for this request.", Data = "" });
        }

        private bool Authorize(HttpActionContext actionContext)
        {
            try
            {
                var encodedString = actionContext.Request.Headers.GetValues("Token").FirstOrDefault();

                bool validFlag = false;

                if (!string.IsNullOrEmpty(encodedString))
                {
                    var key = PasswordHash.DecryptText(encodedString);


                    string[] parts = key.Split('|');
                    Type myType = typeof(WebApiConfig);
                    var myNamespace = myType.Namespace;

                    string protocol = HttpContext.Current.Request.IsSecureConnection ? "https://" : "http://";
                    string myApiUrl = protocol + HttpContext.Current.Request.Url.Authority;

                    int userId = Convert.ToInt32(parts[0]);     // UserID
                    var randomKey = parts[1];                   // Random Key
                    var nameSpace = parts[2];                   // NameSpace
                    var apiUrl = parts[3];                      // apiUrl
                    long ticks = long.Parse(parts[4]);          // Ticks
                    var issuedOn = new DateTime(ticks);

                    List<TokenModel> _modelList = new List<TokenModel>();
                    TokenModel _dbModel = new TokenModel();
                    _dbModel.UserId = userId;
                    _dbModel.TokenKey = encodedString;

                    AuthRepository _loginRepository = new AuthRepository();
                    ResponseObject response = new ResponseObject();
                    response = _loginRepository.VerifyToken(_dbModel);
                    _modelList = JsonConvert.DeserializeObject<List<TokenModel>>(response.Data.ToString());
                    if (userId > 0 && myNamespace == nameSpace && myApiUrl == apiUrl)
                    {
                        validFlag = (DateTime.Now <= _modelList[0].ExpiresOn);

                    }
                }
                return validFlag;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}