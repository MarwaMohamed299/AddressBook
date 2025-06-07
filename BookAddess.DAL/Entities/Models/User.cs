using Microsoft.AspNetCore.Identity;

namespace BookAddess.DAL.Entities.Models
{
    public class User : IdentityUser<Guid>
    {
        public ICollection<AddressBook>? AddressBooks { get; set; } 

    }
}
