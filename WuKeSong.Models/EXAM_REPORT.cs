//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace WuKeSong.Models
{
    public partial class EXAM_REPORT
    {
        public string EXAM_ID { get; set; }
        public int REPORT_NO { get; set; }
        public Nullable<int> STORAGE_MODE { get; set; }
        public string REPORT_URL { get; set; }
        public string EXAM_DESC { get; set; }
        public string EXAM_VIEW { get; set; }
        public string EXAM_DIAG { get; set; }
        public string EXAM_MEMO { get; set; }
        public Nullable<System.DateTime> REPORT_DATE { get; set; }
        public string REPORTER_ID { get; set; }
        public string REPORTER_NAME { get; set; }
        public string VERIFIER_ID { get; set; }
        public string VERIFIER_NAME { get; set; }
        public string DATA_TYPE { get; set; }
        public string FIRST_MEDIA_NAME { get; set; }
        public string FIRST_PATH { get; set; }
        public string SECOND_MEDIA_NAME { get; set; }
        public string SECOND_PATH { get; set; }
        public Nullable<int> IS_ABNORMAL { get; set; }
    }
    
}
