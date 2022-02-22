using Model.Entities;

namespace Domain.Repositories.Interfaces;

public interface IRuleSectionRepository : IRepository<RuleSection>
{
    Task<RuleSection> ReadGraphAsync();
}