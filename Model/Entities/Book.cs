using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities;

[Table("BOOKS")]
public class Book
{
    [Column("BOOK_ID")]
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [Column("TITLE")]
    [StringLength(45)]
    [Required]
    public string Title { get; set; }

    public List<BookAuthor> BookAuthorList { get; set; }
}