using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AcnhMateApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ArtController : ControllerBase
    {
        private readonly ArtRepository _artRepository;

        public ArtController(ArtRepository _artRepository)
        {
            this._artRepository = _artRepository;
        }
        // GET: api/Art
        [HttpGet]
        public async Task<IEnumerable<Art>> Get()
        {
            return await _artRepository.GetAllAsync();
        }

        // GET: api/Art/5
        [HttpGet("{id}")]
        public async Task<Art> Get(int id)
        {
            return await _artRepository.GetByIdAsync(id);
        }

        // POST: api/Art
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Art/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Art/5
        [HttpDelete("{id}")]
        public async Task<bool> Delete(int id)
        {
            return await _artRepository.RemoveAsync(id);
        }
    }
}
