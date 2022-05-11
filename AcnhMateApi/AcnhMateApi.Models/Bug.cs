using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

[CollectionName("bugs")]
public class Bug : BaseDataObject
{
    [BsonElement("availability")] public Availability Availability { get; set; }

    [BsonElement("price")] public int Price { get; set; }

    [BsonElement("price-flick")] public int PriceFlick { get; set; }

    [BsonElement("catch-phrase")] public string CatchPhrase { get; set; }

    [BsonElement("alt-catch-phrase")] public List<string> AltCatchPhrase { get; set; }

    [BsonElement("museum-phrase")] public string MuseumPhrase { get; set; }

    [BsonElement("image_uri")] public string ImageUri { get; set; }

    [BsonElement("icon_uri")] public string IconUri { get; set; }
}