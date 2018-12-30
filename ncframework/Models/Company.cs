using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ncframework.Models
{
    public class Company
    {
        [Key]
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        [Display(Name = "Contact")]
        public string ContactName { get; set; }
        [StringLength(50)]
        [Display(Name = "Phone")]
        public string ContactPhone { get; set; }
        
        [ForeignKey("Parent")]
        [StringLength(36)]
        public string ParentId { get; set; }
        public Company Parent { get; set; }
    }
}
