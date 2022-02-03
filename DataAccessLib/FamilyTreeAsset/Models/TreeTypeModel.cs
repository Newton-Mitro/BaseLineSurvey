using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyTreeAsset.Models
{
    public class TreeTypeModel : BaseEntity
    {
        public Int64 TreeId { get; set; }
        public string TreeName { get; set; }
    }
}
