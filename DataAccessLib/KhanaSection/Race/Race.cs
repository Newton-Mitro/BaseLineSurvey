using DataAccessLib.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLib.KhanaSection.Race
{
    public class Race : BaseEntity
    {
        public Int64 RaceId { get; set; }
        public string RaceName { get; set; }
    }
}
