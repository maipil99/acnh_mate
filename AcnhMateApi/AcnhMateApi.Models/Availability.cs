using MongoDB.Bson.Serialization.Attributes;

namespace AcnhMateApi.Models;

public class Availability
{
    [BsonElement("month-northern")] public string MonthNorthern { get; set; }

    [BsonElement("month-southern")] public string MonthSouthern { get; set; }

    [BsonElement("time")] public string Time { get; set; }

    [BsonElement("isAllDay")] public bool IsAllDay { get; set; }

    [BsonElement("isAllYear")] public bool IsAllYear { get; set; }

    [BsonElement("location")] public string Location { get; set; }

    [BsonElement("rarity")] public string Rarity { get; set; }

    [BsonElement("month-array-northern")] public List<int> MonthArrayNorthern { get; set; }

    [BsonElement("month-array-southern")] public List<int> MonthArraySouthern { get; set; }

    [BsonElement("time-array")] public List<int> TimeArray { get; set; }
}