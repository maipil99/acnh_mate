using System.Collections.Generic;
using AcnhMateApi.Models;
using MongoDB.Driver;

namespace AcnhMateApi.Services;

public class FossilsService
{

    private readonly IMongoCollection<Fossil> _fossils;

    public FossilsService(IMongoDatabase database)
    {
        _fossils = database.GetCollection<Fossil>("fossils");
    }
    
    public List<Fossil> Get()
    {
        return _fossils.Find(fossil => true).ToList();
    }
}