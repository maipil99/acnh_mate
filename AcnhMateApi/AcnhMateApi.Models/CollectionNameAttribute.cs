namespace AcnhMateApi.Models;

[AttributeUsage(AttributeTargets.Class)]
public class CollectionNameAttribute: Attribute
{
    public string Name { get; }
    public CollectionNameAttribute(string name)
    {
        Name = name;
    }
}