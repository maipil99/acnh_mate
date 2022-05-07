using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class BugRepository : BaseRepository<Bug>
{
    public BugRepository(IMongoDatabase context) : base(context)
    {
    }
}