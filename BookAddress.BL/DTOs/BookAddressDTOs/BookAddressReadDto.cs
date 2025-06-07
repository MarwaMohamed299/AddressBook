using System.ComponentModel.DataAnnotations;


namespace BookAddress.BL.DTOs.BookAddressDTOs
{
   public class AddressBookReadDto
    {
        public Guid Id { get; set; }
        [Phone]
        public string? MobileNumber { get; set; }
        public DateOnly DateOfBirth { get; set; }
        public  string? FullName { get; set; }

        public string? Address { get; set; }
        [EmailAddress]
        public string? Email { get; set; }
        public string? PhotoPath { get; set; }
        public Guid JobId { get; set; }
        public string? JobName { get; set; }

        public Guid DepartmentId { get; set; }
        public string? DepartmentName { get; set; }

        public Guid UserId { get; set; }


    }
}
