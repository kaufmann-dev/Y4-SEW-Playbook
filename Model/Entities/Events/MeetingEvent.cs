using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events; 

[Table(("MEETING_EVENTS"))]
public class MeetingEvent : AEvent {

    [Required, StringLength(50)]
    [Column("TITLE")]
    public string Title { get; set; }

    [Required, DataType(DataType.Text)]
    [Column("DESCRIPTION")]
    public string Description { get; set; }
    
}