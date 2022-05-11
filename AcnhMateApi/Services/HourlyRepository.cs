using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class HourlyRepository : BaseRepository<Hourly>
{
    public HourlyRepository(IMongoDatabase context) : base(context)
    {
    }
}