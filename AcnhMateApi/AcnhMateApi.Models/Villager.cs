using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

public class Villager: BaseDataObject
{
    [BsonElement("personality")]
    public string Personality { get; set; }

    [BsonElement("birthday-string")]
    public string BirthdayString { get; set; }

    [BsonElement("birthday")]
    public string Birthday { get; set; }

    [BsonElement("species")]
    public string Species { get; set; }

    [BsonElement("gender")]
    public string Gender { get; set; }

    [BsonElement("subtype")]
    public string Subtype { get; set; }

    [BsonElement("hobby")]
    public string Hobby { get; set; }

    [BsonElement("catch-phrase")]
    public string CatchPhrase { get; set; }

    [BsonElement("icon_uri")]
    public string IconUri { get; set; }

    [BsonElement("image_uri")]
    public string ImageUri { get; set; }

    [BsonElement("bubble-color")]
    public string BubbleColor { get; set; }

    [BsonElement("text-color")]
    public string TextColor { get; set; }

    [BsonElement("saying")]
    public string Saying { get; set; }

    [BsonElement("catch-translations")]
    public CatchTranslations CatchTranslations { get; set; }
}