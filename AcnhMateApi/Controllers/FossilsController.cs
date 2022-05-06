using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcnhMateApi.Models;
using AcnhMateApi.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MongoDB.Bson;

namespace AcnhMateApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FossilsController : ControllerBase
    {
        private readonly FossilsRepository _fossilsRepository;

        public FossilsController(FossilsRepository _fossilsRepository)
        {
            this._fossilsRepository = _fossilsRepository;
        }

        // GET: api/Fossil
        [HttpGet]
        public async Task<IEnumerable<Fossil>> Get()
        {
            return await _fossilsRepository.GetAllAsync();
        }

        // GET: api/Fossil/5
        [HttpGet("{fileName}", Name = "Get")]
        public async Task<Fossil> Get(string fileName)
        {
            return await _fossilsRepository.GetByFileNameAsync(fileName);
        }

        // POST: api/Fossil
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT: api/Fossil/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE: api/Fossil/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}