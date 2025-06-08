using BookAddress.BL.DTOs.BookAddressDTOs;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookAddress.BL.Services.BookAddressesManager
{
    public interface IBookAddressManager
    {
        Task<IEnumerable<AddressBookReadDto>> GetAllAsync();
        Task<AddressBookReadDto> GetByIdAsync(Guid id);
        Task<AddressBookReadDto> AddAsync(BookAddressCreateUpdateDto dto);
        Task<AddressBookReadDto> UpdateAsync(Guid id, BookAddressCreateUpdateDto dto);
        Task<bool> DeleteAsync(Guid id);
        Task<IEnumerable<AddressBookReadDto>> SearchAsync(
            string searchTerm,
            DateOnly? birthDateFrom = null,
            DateOnly? birthDateTo = null);
        Task<FileResult>  ExportBookAddressInExcelFiles();
    }
}
