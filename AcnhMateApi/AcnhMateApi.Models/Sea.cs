using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

[CollectionName("sea")]
public class Sea : BaseDataObject
{
    [BsonElement("availability")] public Availability Availability { get; set; }

    [BsonElement("speed")] public string Speed { get; set; }

    [BsonElement("shadow")] public string Shadow { get; set; }

    [BsonElement("price")] public int Price { get; set; }

    [BsonElement("catch-phrase")] public string CatchPhrase { get; set; }

    [BsonElement("image_uri")] public string ImageUri { get; set; }

    [BsonElement("icon_uri")] public string IconUri { get; set; }

    [BsonElement("museum-phrase")] public string MuseumPhrase { get; set; }
}