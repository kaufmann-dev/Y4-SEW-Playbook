using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Creatures; 

[Table("CREATURES")]
public class Creature {

    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CREATURE_ID")]
    public int Id { get; set; }

    [Required]
    [Column("CREATURE_TYPE")]
    [StringLength(45)]
    public string CreatureType { get; set; }

    [Required, Range(0,100)]
    [Column("COMBAT_SKILL")]
    public int CombatSkill { get; set; }
    
    [Required, Range(0,200)]
    [Column("ENDURANCE")]
    public int Endurance { get; set; }

    
    
}