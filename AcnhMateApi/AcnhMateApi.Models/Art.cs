using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

[CollectionName("art")]
public class Art : BaseDataObject
{
    [BsonElement("hasFake")] public bool HasFake { get; set; }

    [BsonElement("buy-price")] public int BuyPrice { get; set; }

    [BsonElement("sell-price")] public int SellPrice { get; set; }

    [BsonElement("image_uri")] public string ImageUri { get; set; }

    [BsonElement("museum-desc")] public string MuseumDesc { get; set; }

    public override string ToString()
    {
        return
            $"{nameof(HasFake)}: {HasFake}, {nameof(BuyPrice)}: {BuyPrice}, {nameof(SellPrice)}: {SellPrice}, {nameof(ImageUri)}: {ImageUri}, {nameof(MuseumDesc)}: {MuseumDesc}";
    }
}