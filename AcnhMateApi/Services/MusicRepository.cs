using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class MusicRepository: BaseRepository<Music>
{
    public MusicRepository(IMongoDatabase context) : base(context)
    {
    }
}