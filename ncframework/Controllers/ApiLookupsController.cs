using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ncframework.Models;

namespace ncframework.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiLookupsController : ControllerBase
    {
        private readonly IxContext _context;

        public ApiLookupsController(IxContext context)
        {
            _context = context;
        }

        // GET: api/ApiLookups
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Lookup>>> GetLookup()
        {
            return await _context.Lookup.ToListAsync();
        }

        // GET: api/ApiLookups/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Lookup>> GetLookup(string id)
        {
            var lookup = await _context.Lookup.FindAsync(id);

            if (lookup == null)
            {
                return NotFound();
            }

            return lookup;
        }

        // PUT: api/ApiLookups/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutLookup(string id, Lookup lookup)
        {
            if (id != lookup.Id)
            {
                return BadRequest();
            }

            _context.Entry(lookup).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LookupExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/ApiLookups
        [HttpPost]
        public async Task<ActionResult<Lookup>> PostLookup(Lookup lookup)
        {
            _context.Lookup.Add(lookup);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetLookup", new { id = lookup.Id }, lookup);
        }

        // DELETE: api/ApiLookups/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Lookup>> DeleteLookup(string id)
        {
            var lookup = await _context.Lookup.FindAsync(id);
            if (lookup == null)
            {
                return NotFound();
            }

            _context.Lookup.Remove(lookup);
            await _context.SaveChangesAsync();

            return lookup;
        }

        private bool LookupExists(string id)
        {
            return _context.Lookup.Any(e => e.Id == id);
        }
    }
}
