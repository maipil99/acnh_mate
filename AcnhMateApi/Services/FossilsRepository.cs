using AcnhMateApi.Models;
using MongoDB.Bson;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class FossilsRepository : BaseRepository<Fossil>
{
    public FossilsRepository(IMongoDatabase context) : base(context)
    {
    }

    public override async Task<Fossil> GetByIdAsync(int id)
    {
        throw new NotImplementedException();
    }
}