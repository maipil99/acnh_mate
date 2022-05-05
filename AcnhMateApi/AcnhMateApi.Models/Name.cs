using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models; 

public class Name
{
    [BsonElement("name-USen")]
    public string NameUSen { get; set; }

    [BsonElement("name-EUen")]
    public string NameEUen { get; set; }

    [BsonElement("name-EUde")]
    public string NameEUde { get; set; }

    [BsonElement("name-EUes")]
    public string NameEUes { get; set; }

    [BsonElement("name-USes")]
    public string NameUSes { get; set; }

    [BsonElement("name-EUfr")]
    public string NameEUfr { get; set; }

    [BsonElement("name-USfr")]
    public string NameUSfr { get; set; }

    [BsonElement("name-EUit")]
    public string NameEUit { get; set; }

    [BsonElement("name-EUnl")]
    public string NameEUnl { get; set; }

    [BsonElement("name-CNzh")]
    public string NameCNzh { get; set; }

    [BsonElement("name-TWzh")]
    public string NameTWzh { get; set; }

    [BsonElement("name-JPja")]
    public string NameJPja { get; set; }

    [BsonElement("name-KRko")]
    public string NameKRko { get; set; }

    [BsonElement("name-EUru")]
    public string NameEUru { get; set; }
}