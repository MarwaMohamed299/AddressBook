using BookAddess.DAL.Entities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookAddess.DAL.Repos.Departments
{
    public interface IDepartmentRepo
    {
        Task<IEnumerable<Department>> GetAllAsync();
        Task<Department> GetByIdAsync(Guid id);
        Task<Department> AddAsync(Department department);
        Task<Department> UpdateAsync(Department department);
        Task<bool> DeleteAsync(Guid id);
    }
}
