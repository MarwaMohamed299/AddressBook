using BookAddress.BL.DTOs.JobDTOs;

namespace BookAddress.BL.Services.JobsManager
{
    public interface IJobManager
    {
        Task<IEnumerable<JobReadDTo>> GetAllAsync();
        Task<JobReadDTo> GetByIdAsync(Guid id);
        Task<JobReadDTo> AddAsync(JobCreateUpdateDto dto);
        Task<JobReadDTo> UpdateAsync(Guid id, JobCreateUpdateDto dto);
        Task<bool> DeleteAsync(Guid id);
    }
}
