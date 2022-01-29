using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Khana
{
    public class Khana : BaseEntity
    {
        public Int64 KhanaId { get; set; }
        public Int64 DistrictId { get; set; }
        public Int64 UpazilaId { get; set; }
        public Int64 PariseId { get; set; }
        public Int64 ServiceCenterId { get; set; }
        public Int64 VillageId { get; set; }
        public Int64 ReligionId { get; set; }
        public Int64 RaceId { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string HouseReference { get; set; }

    }
}
