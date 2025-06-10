using BookAddess.DAL.Entities.Models;


namespace BookAddess.DAL.Repos.BookAddesses
{
    public interface IBookAddressRepo
    {
        Task<IEnumerable<AddressBook>> GetAllAsync();
        Task<AddressBook> GetByIdAsync(Guid id);
        Task<AddressBook> AddAsync(AddressBook addressBook);
        Task<AddressBook> UpdateAsync(AddressBook addressBook);
        Task<bool> DeleteAsync(Guid id);

        Task<IEnumerable<AddressBook>> SearchAsync(
        string fullName = null,
        string mobileNumber = null,
        string email = null,
        string address = null,
        DateOnly? birthDateFrom = null,
        DateOnly? birthDateTo = null,
        Guid? jobId = null,
        Guid? departmentId = null,
        int? age = null);
    }
}
