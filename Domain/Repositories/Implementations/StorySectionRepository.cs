using Domain.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using Model.Configurations;
using Model.Entities;

namespace Domain.Repositories.Implementations; 

public class StorySectionRepository : ARepository<StorySection>, IStorySectionRepository {
    public StorySectionRepository(PlaybookDBContext dbContext) : base(dbContext) {
    }

    public async Task<StorySection?> ReadGraphAsync(int id) => await _table
        .Include(s=> s.Book)
        .Include(s=>s.OutcomeList)
        .ThenInclude(o=>o.Section)
        .SingleOrDefaultAsync(s => s.Id == id);
}