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
            string searchTerm,
            DateOnly? birthDateFrom = null,
            DateOnly? birthDateTo = null)
        {
            var query = _context.AddressBooks
                .Include(a => a.Job)
                .Include(a => a.Department)
                .AsQueryable();

            if (!string.IsNullOrWhiteSpace(searchTerm))
            {
                query = query.Where(a =>
                    a.FullName.Contains(searchTerm) ||
                    a.MobileNumber.Contains(searchTerm) ||
                    a.Email.Contains(searchTerm) ||
                    a.Address.Contains(searchTerm));
            }

            if (birthDateFrom.HasValue)
                query = query.Where(a => a.DateOfBirth >= birthDateFrom.Value);

            if (birthDateTo.HasValue)
                query = query.Where(a => a.DateOfBirth <= birthDateTo.Value);

            return await query.ToListAsync();
        }
    }
}
