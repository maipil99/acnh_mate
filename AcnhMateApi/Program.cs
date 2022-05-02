using MongoDB.Bson.Serialization.Conventions;
using MongoDB.Driver;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var pack = new ConventionPack {new CamelCaseElementNameConvention()};
ConventionRegistry.Register("Camel case convention", pack, t => true);

var client = new MongoClient("mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&ssl=false");
var database = client.GetDatabase("animal-crossing");

builder.Services.AddSingleton<IMongoClient>(client);
builder.Services.AddSingleton<IMongoDatabase>(database);


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.MapControllers();

app.Run();