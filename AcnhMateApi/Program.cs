using AcnhMateApi;
using AcnhMateApi.Services;
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

builder.Services.AddSingleton(db);
builder.Services.AddSingleton(client);
builder.Services.AddSingleton<FossilsRepository>();
builder.Services.AddSingleton<ArtRepository>();
builder.Services.AddSingleton<BugRepository>();
builder.Services.AddSingleton<FishRepository>();
builder.Services.AddSingleton<HourlyRepository>();
builder.Services.AddSingleton<MiscRepository>();
builder.Services.AddSingleton<MusicRepository>();
builder.Services.AddSingleton<SeaRepository>();
builder.Services.AddSingleton<VillagerRepository>();

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