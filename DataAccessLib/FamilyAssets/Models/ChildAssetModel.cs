using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyAssets.Models
{
    public class ChildAssetModel : BaseEntity
    {
        public Int64 ChildAssetTypeId { get; set; }
        public Int64 ParentAssetId { get; set; }
        public string ChildAssetName { get; set; }
    }
}
