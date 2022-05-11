using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class HourlyController : ControllerBase
{
    private readonly HourlyRepository _hourlyRepository;

    public HourlyController(HourlyRepository _hourlyRepository)
    {
        this._hourlyRepository = _hourlyRepository;
    }

    [HttpGet]
    public async Task<IEnumerable<Hourly>> Get()
    {
        return await _hourlyRepository.GetAllAsync();
    }

    [HttpGet("{id}")]
    public async Task<Hourly> Get(int id)
    {
        return await _hourlyRepository.GetByIdAsync(id);
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
        return await _hourlyRepository.RemoveAsync(id);
    }
}