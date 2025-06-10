using BookAddress.BL.DTOs.BookAddressDTOs;
using BookAddress.BL.Services.BookAddressesManager;
using Microsoft.AspNetCore.Mvc;

namespace BookAddress.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookAddressController : ControllerBase
    {
        private readonly IBookAddressManager _manager;

        public BookAddressController(IBookAddressManager manager)
        {
            _manager = manager;
        }
        [HttpGet("export")]
        public async Task<IActionResult> ExportToExcel()
            => await _manager.ExportBookAddressInExcelFiles();

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
        public async Task<IActionResult> Create([FromForm] BookAddressCreateUpdateDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var result = await _manager.AddAsync(dto);
            return Ok(result);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(Guid id, [FromBody] BookAddressCreateUpdateDto dto)
        {
            var result = await _manager.UpdateAsync(id, dto);
            return result == null ? NotFound() : Ok(result);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(Guid id)
            => Ok(await _manager.DeleteAsync(id));

        [HttpGet("search")]
        public async Task<IActionResult> Search(
        [FromQuery] string? fullName = null,
        [FromQuery] string? mobileNumber = null,
        [FromQuery] string? email = null,
        [FromQuery] string? address = null,
        [FromQuery] DateOnly? birthDateFrom = null,
        [FromQuery] DateOnly? birthDateTo = null,
        [FromQuery] Guid? jobId = null,
        [FromQuery] Guid? departmentId = null,
        [FromQuery] int? age = null)
        => Ok(await _manager.SearchAsync(
            fullName, mobileNumber, email, address,
            birthDateFrom, birthDateTo, jobId, departmentId, age));
    }
}

