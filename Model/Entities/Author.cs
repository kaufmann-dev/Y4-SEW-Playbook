using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Model.Entities;

[Table("AUTHORS")]
public class Author
{
    [Column("AUTHOR_ID")]
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int Id { get; set; }

    [Column("FIRST_NAME")]
    [Required]
    [StringLength(45)]
    public string FirstName { get; set; }
    
    [Column("LAST_NAME")]
    [Required]
    [StringLength(45)]
    public string LastName { get; set; }

    public override string ToString() {
        return $"{FirstName} {LastName}";
    }
}