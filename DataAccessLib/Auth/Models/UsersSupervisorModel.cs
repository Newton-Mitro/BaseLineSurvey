using DataAccessLib.Base;
using System;

namespace DataAccessLib.Auth.Models
{
    public class UsersSupervisorModel : BaseEntity
    {
        public Int64 UserId { get; set; }
        public Int64 SupervisorId { get; set; }
    }
}
