

using BookAddress.BL.DTOs.UserDTOs;
using Microsoft.AspNetCore.Identity;

namespace BookAddress.BL.Managers.UsersManager
{
    public interface IUserManager
    {
        public Task<IEnumerable<IdentityError>> Register(RegisterDto userFromRequest);
        public Task<LogInResultDto> LogIn(LogInDto credentials);
        public Task<UserReadDto> GetUserDetailsById(string id);
    }
}
