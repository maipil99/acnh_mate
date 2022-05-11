using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

[CollectionName("hourly")]
public class Hourly : BaseDataObject
{
    [BsonElement("hour")] public int Hour { get; set; }

    [BsonElement("weather")] public string Weather { get; set; }

    [BsonElement("music_uri")] public string MusicUri { get; set; }
}