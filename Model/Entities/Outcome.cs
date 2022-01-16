using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities;

[Table("OUTCOMES_BT")]
public class Outcome
{
    [Column("OUTCOME_ID")]
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [Column("CONTENT", TypeName = "TEXT")]
    [Required]
    public string Content { get; set; }
    
    [Column("SECTION_ID")]
    public int SectionId { get; set; } 
    public Section Section { get; set; }
    
    [Column("ROOT_SECTION_ID")]
    public int RootSectionId { get; set; }
    public Section RootSection { get; set; }
}