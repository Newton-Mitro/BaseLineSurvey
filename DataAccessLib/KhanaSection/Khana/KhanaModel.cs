using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Khana
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Khana Table
    /// </summary>
    public class KhanaModel : BaseEntity
    {
        public Int64 KhanaId { get; set; }
        public Int64 DistrictId { get; set; }
        public Int64 UpazilaId { get; set; }
        public Int64 ParishId { get; set; }
        public Int64 ServiceCenterId { get; set; }
        public Int64 VillageId { get; set; }
        public Int64 ReligionId { get; set; }
        public Int64 RaceId { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string HouseReference { get; set; }

    }
}
