using DataAccessLib.Base;
using System;

namespace DataAccessLib.Auth
{
    public class UserModel : BaseEntity
    {
        public Int64 UserId { get; set; }
        public string Email { get; set; }
        public string Password { get; set; } = null;
        public long RoleId { get; set; }
    }
}
