using Model.Entities;

namespace Domain.Repositories.Interfaces;

public interface IStorySectionRepository
{
    Task<StorySection> ReadGraphAsync(int id);
}