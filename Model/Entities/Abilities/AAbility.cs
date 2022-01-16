using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Net.Mime;

namespace Model.Entities.Abilities; 

[Table("ABILITIES_ST")]
public abstract class AAbility {

    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("ABILITY_ID")]
    public int Id { get; set; }

    [Required, StringLength(4000)]
    [Column("DESCRIPTION"),DataType(DataType.Text)]
    public string Description { get; set; }

    [Required, StringLength(45)]
    [Column("CODE")]
    public string Code { get; set; }
}