using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class SeaController : ControllerBase
{
    private readonly SeaRepository _seaRepository;

    public SeaController(SeaRepository _seaRepository)
    {
        this._seaRepository = _seaRepository;
    }

    [HttpGet]
    public async Task<IEnumerable<Sea>> Get()
    {
        return await _seaRepository.GetAllAsync();
    }

    [HttpGet("{id}")]
    public async Task<Sea> Get(int id)
    {
        return await _seaRepository.GetByIdAsync(id);
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
        return await _seaRepository.RemoveAsync(id);
    }
}