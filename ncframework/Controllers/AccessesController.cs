using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ncframework.Models;

namespace ncframework.Controllers
{
    public class AccessesController : Controller
    {
        private readonly IxContext _context;

        public AccessesController(IxContext context)
        {
            _context = context;
        }

        // GET: Accesses
        public async Task<IActionResult> Index()
        {
            var ixContext = _context.Access.Include(a => a.Group).Include(a => a.Menu);
            return View(await ixContext.ToListAsync());
        }

        // GET: Accesses/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var access = await _context.Access
                .Include(a => a.Group)
                .Include(a => a.Menu)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (access == null)
            {
                return NotFound();
            }

            return View(access);
        }

        // GET: Accesses/Create
        public IActionResult Create()
        {
            ViewData["GroupId"] = new SelectList(_context.Lookup, "Id", "Id");
            ViewData["MenuId"] = new SelectList(_context.Menu, "Id", "Id");
            return View();
        }

        // POST: Accesses/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,GroupId,MenuId")] Access access)
        {
            if (ModelState.IsValid)
            {
                _context.Add(access);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["GroupId"] = new SelectList(_context.Lookup, "Id", "Id", access.GroupId);
            ViewData["MenuId"] = new SelectList(_context.Menu, "Id", "Id", access.MenuId);
            return View(access);
        }

        // GET: Accesses/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var access = await _context.Access.FindAsync(id);
            if (access == null)
            {
                return NotFound();
            }
            ViewData["GroupId"] = new SelectList(_context.Lookup, "Id", "Id", access.GroupId);
            ViewData["MenuId"] = new SelectList(_context.Menu, "Id", "Id", access.MenuId);
            return View(access);
        }

        // POST: Accesses/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("Id,GroupId,MenuId")] Access access)
        {
            if (id != access.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(access);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AccessExists(access.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["GroupId"] = new SelectList(_context.Lookup, "Id", "Id", access.GroupId);
            ViewData["MenuId"] = new SelectList(_context.Menu, "Id", "Id", access.MenuId);
            return View(access);
        }

        // GET: Accesses/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var access = await _context.Access
                .Include(a => a.Group)
                .Include(a => a.Menu)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (access == null)
            {
                return NotFound();
            }

            return View(access);
        }

        // POST: Accesses/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var access = await _context.Access.FindAsync(id);
            _context.Access.Remove(access);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool AccessExists(string id)
        {
            return _context.Access.Any(e => e.Id == id);
        }
    }
}
