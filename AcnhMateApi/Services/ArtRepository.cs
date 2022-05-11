using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class ArtRepository : BaseRepository<Art>
{
    public ArtRepository(IMongoDatabase context) : base(context)
    {
    }
}