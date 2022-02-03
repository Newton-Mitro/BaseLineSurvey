using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace BaseLineSurveyWebApi.Common
{
    public static class KeyGenerator
    {
        //Here the algorith of how token will be generated
        public static string GetUniqueKey(int maxSize = 15)
        {
            try
            {
                var chars = new char[62];
                chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
                var data = new byte[1];
                using (var crypto = new RNGCryptoServiceProvider())
                {
                    data = new byte[maxSize];
                    crypto.GetNonZeroBytes(data);
                }
                var result = new StringBuilder(maxSize);
                foreach (byte b in data)
                {
                    result.Append(chars[b % (chars.Length)]);
                }
                return result.ToString();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}