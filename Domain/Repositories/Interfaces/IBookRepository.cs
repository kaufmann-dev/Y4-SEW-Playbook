using Model.Entities;

namespace Domain.Repositories.Interfaces;

public interface IBookRepository : IRepository<Book>
{
    Task<Book> ReadGraphAsync();
}