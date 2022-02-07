using DataAccessLib.Base;
using System;

namespace DataAccessLib.MemberSection.RelstionshipSection
{
    public class RelationshipModel : BaseEntity
    {
        public Int64 RelationshipCode { get; set; }
        public string RelationshipName { get; set; }
    }
}
