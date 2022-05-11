using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class SeaRepository : BaseRepository<Sea>
{
    public SeaRepository(IMongoDatabase context) : base(context)
    {
    }
}