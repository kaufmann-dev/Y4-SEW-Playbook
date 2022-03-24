using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events; 

[Table("VALUE_EVENTS")]
public class ValueEvent : AEvent{
    [Column("VALUE")]
    [Range(0,100)]
    [Required]
    public int Value { get; set; }
}