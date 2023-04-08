using Domain.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using Model.Configurations;
using Model.Entities;

namespace Domain.Repositories.Implementations;

public class BookRepository : ARepository<Book>, IBookRepository {
    public BookRepository(PlaybookDBContext dbContext) : base(dbContext) {
        //Ohne CTor im ARepository würde er den parameterlosen ctor erben von object class
        //aber jetzt von arepository überschreibt ctor mit eigenem den man dann erbt
    }

    public async Task<Book?> ReadGraphAsync(int id) => await _table
        .Include(b => b.BookAuthorList)
        .ThenInclude(ba => ba.Author)
        .SingleOrDefaultAsync(b => b.Id == id); //Nur das erste Ergebnis sonst null
    
    public async Task<List<Book>> ReadGraphAsync() => await _table
        .Include(b => b.BookAuthorList)
        .ThenInclude(ba=>ba.Author)
        .ToListAsync();
}