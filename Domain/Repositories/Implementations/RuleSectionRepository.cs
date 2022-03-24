using Model.Configurations;
using Model.Entities;

namespace Domain.Repositories.Implementations;

public class RuleSectionRepository : ARepository<RuleSection>
{
    public RuleSectionRepository(PlaybookDBContext dbContext) : base(dbContext)
    {
    }
}