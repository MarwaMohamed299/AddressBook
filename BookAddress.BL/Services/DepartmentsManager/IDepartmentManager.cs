

using BookAddress.BL.DTOs.DepartmentDTOs;

namespace BookAddress.BL.Services.DepartmentsManager
{
    public interface IDepartmentManager
    {
        Task<IEnumerable<DepartmentReadDto>> GetAllAsync();
        Task<DepartmentReadDto> GetByIdAsync(Guid id);
        Task<DepartmentReadDto> AddAsync(DepartmentCreateUpdateDto dto);
        Task<DepartmentReadDto> UpdateAsync(Guid id, DepartmentCreateUpdateDto dto);
        Task<bool> DeleteAsync(Guid id);
    }
}
