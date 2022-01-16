using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities;

[Table("RULE_SECTIONS")]
public class RuleSection : Section
{
    [Column("SECTION_TYPE")]
    [Required]
    public ESectionType SectionType { get; set; }
}