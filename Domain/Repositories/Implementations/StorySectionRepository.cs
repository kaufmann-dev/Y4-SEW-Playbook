using Domain.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using Model.Configurations;
using Model.Entities;

namespace Domain.Repositories.Implementations;

public class StorySectionRepository : ARepository<StorySection>,IStorySectionRepository
{
    public StorySectionRepository(PlaybookDBContext dbContext) : base(dbContext)
    {
    }

    public async Task<StorySection?> ReadGraphAsync(int id) => await _table
        .Include(ss=>ss.Book)
        .SingleOrDefaultAsync(ss => ss.Id == id);
}