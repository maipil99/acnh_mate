using AcnhMateApi.Models;

namespace AcnhMateApi.Services;

public interface IRepository<TEntity> where TEntity : BaseDataObject
{
    Task AddAsync(TEntity obj);
    Task<TEntity> GetByIdAsync(int id);
    Task<IEnumerable<TEntity>> GetAllAsync();
    Task<bool> UpdateAsync(TEntity obj);
    Task<bool> RemoveAsync(int id);
}