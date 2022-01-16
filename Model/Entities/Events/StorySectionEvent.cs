using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Events;

[Table("STORY_SECTION_HAS_EVENTS_JT")]
public class StorySectionEvent
{
    [Column("SECTION_ID")]
    public int SectionId { get; set; }
    public Section Section { get; set; }
    
    [Column("EVENT_ID")]
    public int EventId { get; set; }
    public AEvent Event { get; set; }
}