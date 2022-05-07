using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class MiscRepository: BaseRepository<Misc>
{
    public MiscRepository(IMongoDatabase context) : base(context)
    {
    }
}