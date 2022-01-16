using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events; 

[Table("EVENTS_BT")]
public abstract class AEvent {

    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("EVENT_ID")]
    public int Id { get; set; }

    [Required]
    [Column("EVENT_TYPE")]
    public EEventType EventType { get; set; }
}