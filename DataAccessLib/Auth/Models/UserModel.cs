using DataAccessLib.Base;
using System;

namespace DataAccessLib.Auth
{
    public class UserModel : BaseEntity
    {
        public string FullName { get; set; }
        public Int64 UserId { get; set; }
        public string Email { get; set; }
        public string Password { get; set; } = null;
        public long RoleId { get; set; }
        public string RoleName { get; set; }
        public long SupervisorId { get; set; }
        public string SupervisorName { get; set; }
        public bool IsActive { get; set; }
    }
}
