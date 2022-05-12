using System.Threading.Tasks;
using AcnhMateApi.Controllers;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using MongoDB.Driver;
using Moq;
using Xunit;

namespace AcnhMateApi.Tests;

public class MiscControllerTests
{
    private readonly Misc _misc;
    private readonly MiscController _controller;

    public MiscControllerTests()
    {
        _misc = new Misc
        {
            BuyPrice = 100,
            _Id = "0",
            FileName = "Rock",
            Id = 0,
            ImageUri = "/",
            IsOrderable = false,
            MusicUri = "BootyRocking.mp3",
            Name = new Name
            {
                NameCNzh = "Rock",
                NameEUde = "Rock",
                NameEUen = "Rock",
                NameEUes = "Rock",
                NameEUfr = "Rock",
                NameEUit = "Rock",
                NameEUnl = "Rock",
                NameEUru = "Rock",
                NameJPja = "Rock",
                NameKRko = "Rock",
                NameTWzh = "Rock",
                NameUSen = "Rock",
                NameUSes = "Rock",
                NameUSfr = "Rock"
            },
            SellPrice = 10
        };
        var mongoContext = new Mock<IMongoDatabase>();
        var repository = new Mock<MiscRepository>(mongoContext.Object);
        repository.Setup(repo => repo.GetByIdAsync(It.IsAny<int>())).ReturnsAsync(_misc);

        _controller = new MiscController(repository.Object);
    }

    [Fact]
    public async Task GetById()
    {
        var result = await _controller.Get(1);
        Assert.Equal(_misc, result);
    }
}