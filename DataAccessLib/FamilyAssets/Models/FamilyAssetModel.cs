using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyAssets.Models
{
    public class FamilyAssetModel : BaseEntity
    {
        public Int64 FamilyAssetId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 ParentAssetId { get; set; }
        public string ParentAssetName { get; set; }
        public Int64 ChildAssetId { get; set; }
        public string ChildAssetName { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
        public double Quantity { get; set; }
        public Decimal CurrentSaleValue { get; set; }
    }
}
