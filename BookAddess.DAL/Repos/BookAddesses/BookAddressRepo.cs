using Azure;
using BookAddess.DAL.Context;
using BookAddess.DAL.Entities.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookAddess.DAL.Repos.BookAddesses
{
    public class BookAddressRepo : IBookAddressRepo
    {
        private readonly BookAddressContext _context;

        public BookAddressRepo(BookAddressContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<AddressBook>> GetAllAsync()
        {
            return await _context.AddressBooks
                .Include(a => a.Job)
                .Include(a => a.Department)
                .ToListAsync();
        }

        public async Task<AddressBook> GetByIdAsync(Guid id)
        {
            return await _context.AddressBooks
                .Include(a => a.Job)
                .Include(a => a.Department)
                .FirstOrDefaultAsync(a => a.Id == id);
        }

        public async Task<AddressBook> AddAsync(AddressBook addressBook)
        {
            await _context.AddressBooks.AddAsync(addressBook);
            await _context.SaveChangesAsync();
            return addressBook;
        }

        public async Task<AddressBook> UpdateAsync(AddressBook addressBook)
        {
            _context.Entry(addressBook).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return addressBook;
        }

        public async Task<bool> DeleteAsync(Guid id)
        {
            var addressBook = await GetByIdAsync(id);
            if (addressBook == null) return false;

            _context.AddressBooks.Remove(addressBook);
            await _context.SaveChangesAsync();
            return true;
        }

        public async Task<IEnumerable<AddressBook>> SearchAsync(
        string fullName = null,
        string mobileNumber = null,
        string email = null,
        string address = null,
        DateOnly? birthDateFrom = null,
        DateOnly? birthDateTo = null,
        Guid? jobId = null,
        Guid? departmentId = null,
        int? age = null)
        {
            var query = _context.AddressBooks
                .Include(a => a.Job)
                .Include(a => a.Department)
                .AsQueryable();

            if (!string.IsNullOrWhiteSpace(fullName))
                query = query.Where(a => a.FullName.Contains(fullName));

            if (!string.IsNullOrWhiteSpace(mobileNumber))
                query = query.Where(a => a.MobileNumber.Contains(mobileNumber));

            if (!string.IsNullOrWhiteSpace(email))
                query = query.Where(a => a.Email.Contains(email));

            if (!string.IsNullOrWhiteSpace(address))
                query = query.Where(a => a.Address.Contains(address));

            if (birthDateFrom.HasValue)
                query = query.Where(a => a.DateOfBirth >= birthDateFrom.Value);

            if (birthDateTo.HasValue)
                query = query.Where(a => a.DateOfBirth <= birthDateTo.Value);

            if (jobId.HasValue)
                query = query.Where(a => a.JobId == jobId.Value);

            if (departmentId.HasValue)
                query = query.Where(a => a.DepartmentId == departmentId.Value);

            if (age.HasValue)
            {
                var today = DateTime.Today;
                var dateFrom = DateOnly.FromDateTime(today.AddYears(-age.Value - 1).AddDays(1));
                var dateTo = DateOnly.FromDateTime(today.AddYears(-age.Value));

                Console.WriteLine($"Searching age {age}");
                Console.WriteLine($"Date Range: {dateFrom} to {dateTo}");

                query = query.Where(a => a.DateOfBirth >= dateFrom && a.DateOfBirth <= dateTo);
            }


            return await query.ToListAsync();

        }
    }
}