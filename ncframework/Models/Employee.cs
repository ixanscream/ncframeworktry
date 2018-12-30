using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ncframework.Models
{
    public class Employee
    {
        [Key]
        [StringLength(36)]
        public string Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name = "NIK")]
        public int Code { get; set; }

        [StringLength(50)]
        public string Email { get; set; }


        [StringLength(255)]
        public string Photo { get; set; }


        [StringLength(50)]
        [Display(Name = "Phone")]
        public string Phone { get; set; }

        [ForeignKey("Parent")]
        [StringLength(36)]
        public string ParentId { get; set; }
        public Employee Parent { get; set; }
    }
}
