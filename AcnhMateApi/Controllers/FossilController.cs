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
    public class FossilController : ControllerBase
    {
        private readonly FossilsService _fossilsService;

        public FossilController(FossilsService fossilsService)
        {
            _fossilsService = fossilsService;
        }

        // GET: api/Fossil
        [HttpGet]
        public IEnumerable<Fossil> Get()
        {
            return _fossilsService.Get();
        }

        // GET: api/Fossil/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            return "value";
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