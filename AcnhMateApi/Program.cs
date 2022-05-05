using AcnhMateApi;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using MongoDB.Bson.Serialization.Conventions;
using MongoDB.Driver;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var pack = new ConventionPack {new CamelCaseElementNameConvention()};
ConventionRegistry.Register("Camel case convention", pack, t => true);

var dbSettingsSection = builder.Configuration.GetSection("AnimalCrossingDatabaseSettings");

builder.Services.Configure<AnimalCrossingDatabaseSettings>(dbSettingsSection);

var client = new MongoClient(dbSettingsSection.Get<AnimalCrossingDatabaseSettings>().ConnectionString);
var db = client.GetDatabase(dbSettingsSection.Get<AnimalCrossingDatabaseSettings>().DatabaseName);


builder.Services.AddSingleton<IMongoDatabase>(db);
builder.Services.AddSingleton<MongoClient>(client);
builder.Services.AddSingleton<FossilsService>();


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