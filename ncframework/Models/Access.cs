using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ncframework.Models
{
    public class Access
    {
        [Key]
        [StringLength(36)]
        public string Id { get; set; }

        [ForeignKey("Lookup")]
        [StringLength(36)]
        public string LookupId { get; set; }
        public Lookup Lookup { get; set; }

        [ForeignKey("Menu")]
        [StringLength(36)]
        public string MenuId { get; set; }
        public Menu Menu { get; set; }
    }
}
