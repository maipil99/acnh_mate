using System.Threading.Tasks;
using AcnhMateApi.Controllers;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using MongoDB.Driver;
using Moq;
using Xunit;

namespace AcnhMateApi.Tests;

public class FossilsControllerTests
{
    private readonly Fossil _fossil;
    private readonly FossilsController _controller;

    public FossilsControllerTests()
    {
        _fossil = new Fossil
        {
            _Id = "0",
            FileName = "Tyrannosaurus Rex arm",
            Price = 1000,
            MuseumPhrase = "Dinosaur wow",
            ImageUri = "dino.png",
            PartOf = "Tyrannosaurus Rex",
            Name = new Name { NameEUen = "Tyrannosaurus Rex arm" }
        };
        var mongoContext = new Mock<IMongoDatabase>();
        var repository = new Mock<FossilsRepository>(mongoContext.Object);
        repository.Setup(repo => repo.GetByFileNameAsync(It.IsAny<string>())).ReturnsAsync(_fossil);

        _controller = new FossilsController(repository.Object);
    }

    [Fact]
    public async Task GetByFileName()
    {
        var result = await _controller.Get("1");
        Assert.Equal(_fossil, result);
    }
}