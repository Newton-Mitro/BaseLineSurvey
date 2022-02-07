using DataAccessLib.Base;
using System;

namespace DataAccessLib.VitaminKhowledgeSection.VitaminKnowledgeQuestion
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Vitamin Khowledge Question Table
    /// </summary>
    public class VitaminKnowledgeQuestionModel : BaseEntity
    {
        public Int64 VitaminKnowledgeQuestionId { get; set; }
        public Int64 QuestionId { get; set; }
        public bool IsAnswered { get; set; }
        public string QuestionText { get; set; }
    }
}
