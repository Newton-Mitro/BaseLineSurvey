using System;

namespace DataAccessLib.Auth
{
    public class TokenModel : UserModel
    {
        public long TokenID { get; set; }
        public string TokenKey { get; set; }
        public Nullable<System.DateTime> IssuedOn { get; set; }
        public Nullable<System.DateTime> ExpiresOn { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    }
}
