

using BookAddess.DAL.Context;
using BookAddess.DAL.Entities.Models;
using Microsoft.EntityFrameworkCore;

namespace BookAddess.DAL.Repos.Jobs
{
    public class JobRepo : IJobRepo
    {
        private readonly BookAddressContext _context;

        public JobRepo(BookAddressContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Job>> GetAllAsync()
        {
            return await _context.Jobs.ToListAsync();
        }

        public async Task<Job> GetByIdAsync(Guid id)
        {
            return await _context.Jobs
                .FirstOrDefaultAsync(j => j.Id == id);
        }

        public async Task<Job> AddAsync(Job job)
        {
            await _context.Jobs.AddAsync(job);
            await _context.SaveChangesAsync();
            return job;
        }

        public async Task<Job> UpdateAsync(Job job)
        {
            _context.Entry(job).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return job;
        }

        public async Task<bool> DeleteAsync(Guid id)
        {
            var job = await GetByIdAsync(id);
            if (job == null) return false;

            _context.Jobs.Remove(job);
            await _context.SaveChangesAsync();
            return true;
        }
    }
}
