using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers;

[Route("api/[controller]")]
[ApiController]
public class MiscController : ControllerBase
{
    private readonly MiscRepository _miscRepository;

    public MiscController(MiscRepository _miscRepository)
    {
        this._miscRepository = _miscRepository;
    }

    [HttpGet]
    public async Task<IEnumerable<Misc>> Get()
    {
        return await _miscRepository.GetAllAsync();
    }

    [HttpGet("{id}")]
    public async Task<Misc> Get(int id)
    {
        return await _miscRepository.GetByIdAsync(id);
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
        return await _miscRepository.RemoveAsync(id);
    }
}