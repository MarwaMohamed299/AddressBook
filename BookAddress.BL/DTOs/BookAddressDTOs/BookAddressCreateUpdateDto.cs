
using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace BookAddress.BL.DTOs.BookAddressDTOs
{
    public class BookAddressCreateUpdateDto
    {
        [Phone]
        public string? MobileNumber { get; set; }
        public DateOnly DateOfBirth { get; set; }
        public  string? FullName { get; set; }

        public string? Address { get; set; }
        [EmailAddress]
        public string? Email { get; set; }
        public IFormFile? Photo { get; set; } 
        public Guid JobId { get; set; }

        public Guid DepartmentId { get; set; }


    }
}
