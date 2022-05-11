using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class FishRepository : BaseRepository<Fish>
{
    public FishRepository(IMongoDatabase context) : base(context)
    {
    }
}