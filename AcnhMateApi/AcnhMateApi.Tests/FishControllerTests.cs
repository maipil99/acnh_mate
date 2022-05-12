using System.Collections.Generic;
using System.Threading.Tasks;
using AcnhMateApi.Controllers;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using MongoDB.Driver;
using Moq;
using Xunit;

namespace AcnhMateApi.Tests;

public class FishControllerTests
{
    private readonly Fish _fish;
    private readonly FishController _controller;


    public FishControllerTests()
    {
        _fish = new Fish
        {
            _Id = "0",
            FileName = "Bitterling",
            Availability = new Availability
            {
                MonthNorthern = "August",
                IsAllDay = true
            },
            Shadow = "Small",
            Price = 100,
            PriceCj = 150,
            CatchPhrase = "Well done Mate",
            AltCatchPhrase = new List<string>
            {
                "Merci",
                "Danke"
            },
            MuseumPhrase = "Fish is cool",
            ImageUri = "fish.png",
            IconUri = "fishIcon.png",
            Name = new Name{ NameEUen = "Bitterling"}
        };
        var mongoContext = new Mock<IMongoDatabase>();
        var repository = new Mock<FishRepository>(mongoContext.Object);
        repository.Setup(repo => repo.GetByIdAsync(It.IsAny<int>())).ReturnsAsync(_fish);

        _controller = new FishController(repository.Object);
    }

[Fact]
public async Task GetById()
{
    var result = await _controller.Get(1);
    Assert.Equal(_fish, result);
}
}