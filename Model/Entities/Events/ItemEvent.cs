using System.ComponentModel.DataAnnotations.Schema;
using Model.Entities.Items;

namespace Model.Entities.Events; 

[Table("ITEM_EVENTS")]
public class ItemEvent : AEvent{

    public AItem Item { get; set; }

    [Column("ITEM_ID")]
    public int ItemId { get; set; }
}