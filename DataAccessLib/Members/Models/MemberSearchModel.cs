namespace DataAccessLib.MemberSection.Models
{
    public class MemberSearchModel
    {
        public long KhanaId { get; set; }
        public int Age { get; set; }
        public int FromAge { get; set; }
        public int ToAge { get; set; }
        public int Condition { get; set; } // 1 = Equal, 2 = Less Than, 3 = Greater Than
    }
}
