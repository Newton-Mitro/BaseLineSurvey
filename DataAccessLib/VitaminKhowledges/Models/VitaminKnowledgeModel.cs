using DataAccessLib.Base;
using System;

namespace DataAccessLib.VitaminKhowledgeSection.VitaminKnowledges
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Vitamin Khowledge Table
    /// </summary>
    public class VitaminKnowledgeModel : BaseEntity
    {
        public Int64 VitaminKnowledgeId { get; set; }
        public Int64 KhanaId { get; set; }
        public Int64 QuestionId { get; set; }
        public Int64 OptionId { get; set; }
        public Int64 InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
    }
}
