using BookAddess.DAL.Entities.Models;
using BookAddess.DAL.Repos.Departments;
using BookAddress.BL.DTOs.DepartmentDTOs;

namespace BookAddress.BL.Services.DepartmentsManager
{
    public class DepartmentManager : IDepartmentManager
    {
        private readonly IDepartmentRepo _repo;

        public DepartmentManager(IDepartmentRepo repo)
        {
            _repo = repo;
        }

        public async Task<IEnumerable<DepartmentReadDto>> GetAllAsync()
        {
            var entities = await _repo.GetAllAsync();
            return entities.Select(MapToDto);
        }

        public async Task<DepartmentReadDto> GetByIdAsync(Guid id)
        {
            var entity = await _repo.GetByIdAsync(id);
            return entity == null ? null : MapToDto(entity);
        }

        public async Task<DepartmentReadDto> AddAsync(DepartmentCreateUpdateDto dto)
        {
            var entity = MapToEntity(dto);
            var result = await _repo.AddAsync(entity);
            return MapToDto(result);
        }

        public async Task<DepartmentReadDto> UpdateAsync(Guid id, DepartmentCreateUpdateDto dto)
        {
            var entity = await _repo.GetByIdAsync(id);
            if (entity == null) return null;

            entity.Name = dto.Name;
            var updated = await _repo.UpdateAsync(entity);
            return MapToDto(updated);
        }

        public async Task<bool> DeleteAsync(Guid id)
        {
            return await _repo.DeleteAsync(id);
        }

        #region Mapping 

        private DepartmentReadDto MapToDto(Department entity)
        {
            return new DepartmentReadDto
            {
                Id = entity.Id,
                Name = entity?.Name
            };
        }

        private Department MapToEntity(DepartmentCreateUpdateDto dto)
        {
            return new Department
            {
                Name = dto.Name
            };
        }
        #endregion
    }
}
