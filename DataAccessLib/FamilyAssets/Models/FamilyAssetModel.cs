using DataAccessLib.Base;
using System;

namespace DataAccessLib.FamilyAssets.Models
{
    public class FamilyAssetModel : BaseEntity
    {
        public Int64 FamilyAssetId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 ParentAssetId { get; set; }
        public Int64 ChildAssetId { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public int Quantity { get; set; }
        public Decimal CurrentSaleValue { get; set; }
    }
}
