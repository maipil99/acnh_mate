using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class FishController : ControllerBase
{
    private readonly FishRepository _fishRepository;

    public FishController(FishRepository _fishRepository)
    {
        this._fishRepository = _fishRepository;
    }

    [HttpGet]
    public async Task<IEnumerable<Fish>> Get()
    {
        return await _fishRepository.GetAllAsync();
    }

    [HttpGet("{id}")]
    public async Task<Fish> Get(int id)
    {
        return await _fishRepository.GetByIdAsync(id);
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
        return await _fishRepository.RemoveAsync(id);
    }
}