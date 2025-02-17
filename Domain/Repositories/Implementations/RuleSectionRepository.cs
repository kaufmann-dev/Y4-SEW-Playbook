using Domain.Repositories.Interfaces;
using Model.Configurations;
using Model.Entities;

namespace Domain.Repositories.Implementations;

public class RuleSectionRepository : ARepository<RuleSection>, IRuleSectionRepository
{
    public RuleSectionRepository(PlaybookDBContext dbContext) : base(dbContext)
    {
    }

    public Task<RuleSection> ReadGraphAsync()
    {
        throw new NotImplementedException();
    }
}