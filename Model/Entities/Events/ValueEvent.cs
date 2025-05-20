using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events; 

[Table("VALUE_EVENTS")]
public class ValueEvent : AEvent{

    [Required, Range(0,100)]
    [Column("VALUE")]
    public int Value { get; set; }
}