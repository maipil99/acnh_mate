using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class BugsController : ControllerBase
{
    private readonly BugRepository _bugRepository;

    public BugsController(BugRepository _bugRepository)
    {
        this._bugRepository = _bugRepository;
    }

    [HttpGet]
    public async Task<IEnumerable<Bug>> Get()
    {
        return await _bugRepository.GetAllAsync();
    }

    [HttpGet("{id}")]
    public async Task<Bug> Get(int id)
    {
        return await _bugRepository.GetByIdAsync(id);
    }

    [HttpPost]
    public void Post([FromBody] string value)
    {
    }

    [HttpPut("{id}")]
    public void Put(int id, [FromBody] string value)
    {
    }

    [HttpDelete("{id}")]
    public async Task<bool> Delete(int id)
    {
        return await _bugRepository.RemoveAsync(id);
    }
}