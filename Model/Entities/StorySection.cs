using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities;

[Table("STORY_SECTIONS")]
public class StorySection : Section
{
    [Column("SECTION_NR")]
    [Required, Range(1,500)]
    public int Nr { get; set; }

    public List<Outcome> Outcomes { get; set; }
}