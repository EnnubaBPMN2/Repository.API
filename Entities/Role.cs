using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Repository.API.Interfaces;

namespace Repository.API.Entities
{
    [Table("Role")]
    public class Role : IRole
    {
        [Required] public byte Id { get; set; }
        [Required] [StringLength(50)] public string Name { get; set; }
    }
}