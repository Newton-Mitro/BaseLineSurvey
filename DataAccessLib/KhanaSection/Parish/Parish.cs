using DataAccessLib.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLib.KhanaSection.Parish
{
    public class Parish : BaseEntity
    {
        public Int64 ParishId { get; set; }
        public Int64 UpazilaId { get; set; }
        public string ParishName { get; set; }
    }
}
