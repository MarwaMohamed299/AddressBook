using BookAddess.DAL.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BookAddess.DAL.Entities.Models
{
    public class AddressBook : BaseEntity
    {
        [Phone]
        public string? MobileNumber { get; set; }
        public DateOnly DateOfBirth { get; set; }
        
        public  string? FullName { get; set; }

        public string? Address { get; set; }
        [EmailAddress]
        public string? Email { get; set; }
        public string? PhotoPath { get; set; }

        #region Relations 

        public Guid JobId { get; set; }
        public Job? Job { get; set; }

        public Guid DepartmentId { get; set; }
        public Department? Department { get; set; }

        public Guid UserId { get; set; }
        public User? CreatedBy { get; set; }

        #endregion

        [NotMapped]
        public new string? Name { get; set; }
    }
}
