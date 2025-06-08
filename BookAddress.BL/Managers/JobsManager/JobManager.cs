using BookAddess.DAL.Entities.Models;
using BookAddess.DAL.Repos.Jobs;
using BookAddress.BL.DTOs.JobDTOs;

namespace BookAddress.BL.Services.JobsManager
{
    public class JobManager : IJobManager
    {
        private readonly IJobRepo _repo;

        public JobManager(IJobRepo repo)
        {
            _repo = repo;
        }

        public async Task<IEnumerable<JobReadDTo>> GetAllAsync()
        {
            var entities = await _repo.GetAllAsync();
            return entities.Select(MapToDto);
        }

        public async Task<JobReadDTo> GetByIdAsync(Guid id)
        {
            var entity = await _repo.GetByIdAsync(id);
            return entity == null ? null : MapToDto(entity);
        }

        public async Task<JobReadDTo> AddAsync(JobCreateUpdateDto dto)
        {
            var entity = MapToEntity(dto);
            var result = await _repo.AddAsync(entity);
            return MapToDto(result);
        }

        public async Task<JobReadDTo> UpdateAsync(Guid id, JobCreateUpdateDto dto)
        {
            var entity = await _repo.GetByIdAsync(id);
            if (entity == null) return null!;

            entity.Name = dto.Name;
            var updated = await _repo.UpdateAsync(entity);
            return MapToDto(updated);
        }

        public async Task<bool> DeleteAsync(Guid id)
        {
            return await _repo.DeleteAsync(id);
        }

        #region Mapping
        private JobReadDTo MapToDto(Job entity)
        {
            return new JobReadDTo
            {
                Id = entity.Id,
                Name = entity?.Name
            };
        }

        private Job MapToEntity(JobCreateUpdateDto dto)
        {
            return new Job
            {
                Name = dto.Name
            };
        }
        #endregion
    }
}
