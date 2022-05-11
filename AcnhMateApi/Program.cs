using AcnhMateApi;
using AcnhMateApi.Services;
using MongoDB.Bson.Serialization.Conventions;
using MongoDB.Driver;
using Serilog;
using Serilog.Debugging;
using Serilog.Exceptions;
using Serilog.Sinks.Elasticsearch;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Logging.AddSerilog();

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

SelfLog.Enable(Console.Error);
builder.Host.UseSerilog((context, logConfig) =>
{
    logConfig
        .Enrich.FromLogContext()
        .Enrich.WithMachineName()
        .Enrich.WithExceptionDetails()
        .WriteTo.Console()
        .WriteTo.Elasticsearch(new ElasticsearchSinkOptions(new Uri("http://localhost:9200"))
        {
            FailureCallback = e => Console.WriteLine("Unable to submit event " + e.MessageTemplate),
            EmitEventFailure = EmitEventFailureHandling.RaiseCallback | EmitEventFailureHandling.WriteToFailureSink,
            IndexFormat = $"acnh-mate-api-{DateTime.UtcNow:yyyy.MM.dd}",
            AutoRegisterTemplate = true,
            AutoRegisterTemplateVersion = AutoRegisterTemplateVersion.ESv7
        })
        .Enrich.WithProperty("Environment", context.HostingEnvironment.EnvironmentName)
        .ReadFrom.Configuration(context.Configuration); // Read from appsettings.json
});

var app = builder.Build();

// Configure the HTTP request pipeline.

app.UseSwagger();
app.UseSwaggerUI();


// app.UseHttpsRedirection();

app.MapControllers();

app.Run();