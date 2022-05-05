using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

public class BaseDataObject
{
    [BsonId]
    [BsonRepresentation(BsonType.ObjectId)]
    public string _Id { get; set; }
        
    [BsonElement("id")]
    public int Id { get; set; }
    
    [BsonElement("name")]
    public Name Name { get; set; }
    
    [BsonElement("file-name")]
    public string FileName { get; set; }
    
}