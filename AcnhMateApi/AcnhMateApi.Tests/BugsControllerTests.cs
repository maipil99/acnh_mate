using System.Collections.Generic;
using System.Threading.Tasks;
using AcnhMateApi.Controllers;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using MongoDB.Driver;
using Moq;
using Xunit;

namespace AcnhMateApi.Tests;

public class BugsControllerTests
{
    private readonly Bug _bug;
    private readonly BugsController _controller;
    
    //Set Up
    public BugsControllerTests()
    {
        _bug = new Bug
        {
            _Id = "0",
            AltCatchPhrase = null,
            Availability = new Availability
            {
                IsAllDay = false,
                IsAllYear = false,
                Location = "Tree",
                MonthArrayNorthern = new List<int>
                {
                    0,
                    1,
                    2,
                    3,
                    4,
                    5
                },
                MonthArraySouthern = new List<int>
                {
                    6,
                    7,
                    8,
                    9,
                    10,
                    11
                },
                MonthNorthern = "January",
                MonthSouthern = "June",
                Rarity = "Legendary",
                Time = "10:15",
                TimeArray = new List<int>
                {
                    1,
                    2
                }
            },
            Price = 0,
            PriceFlick = 0,
            CatchPhrase = "Frankly, my dear, I don't give a damn.",
            FileName = "Buggo",
            IconUri = "/",
            Id = 0,
            ImageUri = "/",
            MuseumPhrase = "HOOT HOOT GET IT AWAY MOTHERFUCKER.",
            Name = new Name
            {
                NameEUen = "Buggo",
                NameCNzh = "Buggo",
                NameEUde = "Buggo",
                NameEUes = "Buggo",
                NameEUfr = "Buggo",
                NameEUit = "Buggo",
                NameEUnl = "Buggo",
                NameEUru = "Buggo",
                NameJPja = "Buggo",
                NameKRko = "Buggo",
                NameTWzh = "Buggo",
                NameUSen = "Buggo",
                NameUSes = "Buggo",
                NameUSfr = "Buggo"
            },
            
        };
        var mongoContext = new Mock<IMongoDatabase>();
        var repository = new Mock<BugRepository>(mongoContext.Object);
        repository.Setup(repo => repo.GetByIdAsync(It.IsAny<int>())).ReturnsAsync(_bug);
        _controller = new BugsController(repository.Object);
    }

    [Fact]
    public async Task GetById()
    {
        var result = await _controller.Get(1);
        Assert.Equal(_bug, result);
    }
}