using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyTreeAsset.Models
{
    public class FamilyTreeAssetModel : BaseEntity
    {
        public Int64 FamilyTreeAssetId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 TreeId { get; set; }
        public string TreeName { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
        public int NumberOfTrees { get; set; }
    }
}
