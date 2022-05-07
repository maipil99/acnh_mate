using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class VillagerRepository: BaseRepository<Villager>
{
    public VillagerRepository(IMongoDatabase context) : base(context)
    {
    }
}