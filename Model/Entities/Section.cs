using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Net.Mime;

namespace Model.Entities;

[Table("SECTIONS_BT")]
public class Section
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("SECTION_ID")]
    public int Id { get; set; }

    [Column("CONTENT", TypeName = "TEXT")]
    [Required]
    public string Content { get; set; }
    
    [Column("BOOK_ID")]
    public int BookId { get; set; }
    
    public Book Book { get; set; }
}