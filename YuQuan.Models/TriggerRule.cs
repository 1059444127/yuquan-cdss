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

namespace YuQuan.Models
{
    public partial class TriggerRule
    {
        public int Id { get; set; }
        public string Version { get; set; }
        public string PPV { get; set; }
        public string Name { get; set; }
        public string RuleSet { get; set; }
        public string Status { get; set; }
        public string AssemblyPath { get; set; }
        public string ActivityName { get; set; }
        public Nullable<System.DateTime> TimeStamp { get; set; }
    
        public virtual ClinicalProblemDefinition ClinicalProblemDefinition { get; set; }
    }
    
}
