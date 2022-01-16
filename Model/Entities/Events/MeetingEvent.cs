using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events; 

[Table(("MEETING_EVENTS"))]
public class MeetingEvent : AEvent {
    [Column("TITLE")]
    [StringLength(45)]
    [Required]
    public string Title { get; set; }
    
    [Column("DESCRIPTION")]
    [Required]
    [StringLength(255)]
    [DataType(DataType.Text)]
    public string Description { get; set; }
}