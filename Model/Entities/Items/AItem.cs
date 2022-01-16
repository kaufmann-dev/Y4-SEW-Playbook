using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities.Items; 

[Table("ITEMS_ST")]
public abstract class AItem {

    [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("ITEM_ID")]
    public int Id { get; set; }

    [Required, StringLength(45)]
    [Column("NAME")]
    public string Name { get; set; }

    [Required, DataType(DataType.Text), StringLength(4000)]
    [Column("DESCRIPTION")]
    public string Description { get; set; }
}