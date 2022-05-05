using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

public class CatchTranslations
{
    [BsonElement("catch-USen")]
    public string CatchUSen { get; set; }

    [BsonElement("catch-EUen")]
    public string CatchEUen { get; set; }

    [BsonElement("catch-EUde")]
    public string CatchEUde { get; set; }

    [BsonElement("catch-EUes")]
    public string CatchEUes { get; set; }

    [BsonElement("catch-USes")]
    public string CatchUSes { get; set; }

    [BsonElement("catch-EUfr")]
    public string CatchEUfr { get; set; }

    [BsonElement("catch-USfr")]
    public string CatchUSfr { get; set; }

    [BsonElement("catch-EUit")]
    public string CatchEUit { get; set; }

    [BsonElement("catch-EUnl")]
    public string CatchEUnl { get; set; }

    [BsonElement("catch-CNzh")]
    public string CatchCNzh { get; set; }

    [BsonElement("catch-TWzh")]
    public string CatchTWzh { get; set; }

    [BsonElement("catch-JPja")]
    public string CatchJPja { get; set; }

    [BsonElement("catch-KRko")]
    public string CatchKRko { get; set; }

    [BsonElement("catch-EUru")]
    public string CatchEUru { get; set; }
}