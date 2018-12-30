using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ncframework.Models
{
    public class User
    {
        [Key]
        [StringLength(36)]
        public string UserId { get; set; }
        
        [StringLength(36)]
        public string Password { get; set; }


        [ForeignKey("Employee")]
        [StringLength(36)]
        public string EmployeeId { get; set; }
        public Employee Employee { get; set; }

        public Boolean IsAdmin { get; set; }
    }
}
