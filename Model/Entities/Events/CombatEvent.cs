using System.ComponentModel.DataAnnotations.Schema;
using Model.Entities.Creatures;

namespace Model.Entities.Events; 

[Table("COMBAT_EVENTS")]
public class CombatEvent : AEvent{
    
    public Creature Creature { get; set; }

    [Column("CREATURE_ID")]
    public int CreatureId { get; set; }
}