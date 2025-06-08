using BookAddess.DAL.Entities.Models;
using BookAddress.BL.DTOs.UserDTOs;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace BookAddress.BL.Managers.UsersManager
{
    public class UserManager : IUserManager
    {
        private readonly UserManager<User> _userManager;
        private readonly IConfiguration _config;

        public UserManager(UserManager<User> userManager , IConfiguration config)
        {
            _userManager = userManager;
            _config = config;

        }

        public async Task<IEnumerable<IdentityError>> Register(RegisterDto userFromRequest)
        {
            User user = new User
            {
                UserName = userFromRequest.UserName,
                Email = userFromRequest.Email,
            };
            var RegisterResult = await _userManager.CreateAsync(user, userFromRequest.Password);
            if (!RegisterResult.Succeeded)
            {
                return RegisterResult.Errors;
            }
            else
            {
                var userClaims = new List<Claim>
            {
                new Claim(ClaimTypes.Name,userFromRequest.UserName),
                new Claim (ClaimTypes.NameIdentifier,user.Id.ToString()),
                new Claim(ClaimTypes.Email, userFromRequest.Email),
            };
                await _userManager.AddClaimsAsync(user, userClaims);
                return null!;
            }
        }
        public async Task<LogInResultDto> LogIn(LogInDto credentials)
        {
            LogInResultDto resultDto = new LogInResultDto();

            var User = await _userManager.FindByEmailAsync(credentials.Email);
            if (User == null)
            {
                resultDto.IsSuccess = false;
                resultDto.Message = "User Name Or Password Isn't Correct";
                return resultDto;
            }
            if (await _userManager.IsLockedOutAsync(User))
            {
                resultDto.IsSuccess = false;
                resultDto.Message = "User Is Locked, Try again after 10 minutes";
                return resultDto;
            }
            if (!(await _userManager.CheckPasswordAsync(User, credentials.Password)))
            {
                await _userManager.AccessFailedAsync(User);
                resultDto.IsSuccess = false;
                resultDto.Message = "User Name Or Password Isn't Correct";
                return resultDto;
            }

            //Key Generation

            var key = GenerateKey();

            // Hashing 
            var generatingToken = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);
            var userClaims = await _userManager.GetClaimsAsync(User);


            //Generate token
            var jwt = new JwtSecurityToken
                (
                    claims: userClaims,
                    notBefore: DateTime.Now,
                    expires: DateTime.Now.AddMinutes(1),
                    signingCredentials: generatingToken
                );

            var tokenHandler = new JwtSecurityTokenHandler();
            string tokenString = tokenHandler.WriteToken(jwt);
            resultDto.IsSuccess = true;
            resultDto.Message = "Login Successfully";
            resultDto.Token = tokenString;
            resultDto.ExpiryDate = jwt.ValidTo;
            return resultDto;


        }

        public async Task<UserReadDto> GetUserDetailsById(string id)
        {
            var user = await _userManager.FindByIdAsync(id);
            if (user == null)
            {
                throw new ArgumentException("User Not Found");
            }
            return new UserReadDto
            {
                Email = user.Email ?? string.Empty,
                UserName = user.UserName ?? string.Empty
            };
        }


        private SymmetricSecurityKey GenerateKey()
        {
            var secretKey = _config["SecretKey"];
            if (string.IsNullOrEmpty(secretKey))
            {
                throw new InvalidOperationException("SecretKey is not configured properly");
            }

            var secretKeyInBytes = Encoding.ASCII.GetBytes(secretKey);
            return new SymmetricSecurityKey(secretKeyInBytes);
        }
        
    }
}
