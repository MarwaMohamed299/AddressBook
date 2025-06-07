using BookAddess.DAL.Entities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookAddess.DAL.Repos.Jobs
{
    public interface IJobRepo
    {
        Task<IEnumerable<Job>> GetAllAsync();
        Task<Job> GetByIdAsync(Guid id);
        Task<Job> AddAsync(Job job);
        Task<Job> UpdateAsync(Job job);
        Task<bool> DeleteAsync(Guid id);
    }
}
