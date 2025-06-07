using BookAddress.BL.DTOs.DepartmentDTOs;
using BookAddress.BL.Services.DepartmentsManager;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BookAddress.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {
        private readonly IDepartmentManager _manager;

        public DepartmentController(IDepartmentManager manager)
        {
            _manager = manager;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
            => Ok(await _manager.GetAllAsync());

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(Guid id)
        {
            var result = await _manager.GetByIdAsync(id);
            return result == null ? NotFound() : Ok(result);
        }

        [HttpPost]
        public async Task<IActionResult> Add([FromBody] DepartmentCreateUpdateDto dto)
            => Ok(await _manager.AddAsync(dto));

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] DepartmentCreateUpdateDto dto)
        {
            var result = await _manager.UpdateAsync(id, dto);
            return result == null ? NotFound() : Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(Guid id)
            => Ok(await _manager.DeleteAsync(id));
    }
}
