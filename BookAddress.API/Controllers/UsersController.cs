using BookAddress.BL.DTOs.UserDTOs;
using BookAddress.BL.Managers.UsersManager;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;

namespace BookAddress.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly IUserManager _userManager;

        public UsersController(IUserManager userManager)
        {
            _userManager = userManager;
        }
        [HttpPost]
        [Route("Register")]
        public async Task<ActionResult> Register(RegisterDto userDto)
        {
            var result = await _userManager.Register(userDto);
            return Ok(result);
        }
        [HttpPost]
        [Route("Login")]
        public async Task<ActionResult<LogInResultDto>> Login(LogInDto credentials)
        {
            var result = await _userManager.LogIn(credentials);
            return Ok(result);
        }


        [HttpGet("UserDetails")]
        [Authorize]
        public async Task<ActionResult<UserReadDto>> GetUserDetailsByToken()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrEmpty(userId))
            {
                return Unauthorized();
            }

            var user = await _userManager.GetUserDetailsById(userId);
            return Ok(user);
        }

    }
}
