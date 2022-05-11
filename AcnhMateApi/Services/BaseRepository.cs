using System.Reflection;
using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public abstract class BaseRepository<TEntity> : IRepository<TEntity> where TEntity : BaseDataObject
{
    private readonly IMongoDatabase _context;
    protected readonly IMongoCollection<TEntity> DbSet;

    protected BaseRepository(IMongoDatabase context)
    {
        _context = context;

        var attr = typeof(TEntity).GetCustomAttribute(typeof(CollectionNameAttribute));
        if (attr is not CollectionNameAttribute collectionNameAttribute)
            throw new Exception($"{typeof(TEntity).Name} is not decorated with CollectionNameAttribute");

        DbSet = _context.GetCollection<TEntity>(collectionNameAttribute.Name);
    }

    public virtual async Task AddAsync(TEntity obj)
    {
        await DbSet.InsertOneAsync(obj);
    }

    public virtual async Task<TEntity> GetByIdAsync(int id)
    {
        var data = await DbSet.FindAsync(entity => entity.Id == id);
        return await data.FirstOrDefaultAsync();
    }

    public virtual async Task<IEnumerable<TEntity>> GetAllAsync()
    {
        var all = await DbSet.FindAsync(o => true);
        return all.ToList();
    }

    public virtual async Task<bool> UpdateAsync(TEntity obj)
    {
        return (await DbSet.ReplaceOneAsync(entity => entity.Id == obj.Id, obj)).IsAcknowledged;
    }

    public virtual async Task<bool> RemoveAsync(int id)
    {
        return (await DbSet.DeleteOneAsync(Builders<TEntity>.Filter.Eq(" _id ", id))).IsAcknowledged;
    }

    public virtual async Task<TEntity> GetByFileNameAsync(string fileName)
    {
        var data = await DbSet.FindAsync(entity => entity.FileName == fileName);
        return await data.FirstOrDefaultAsync();
    }
}