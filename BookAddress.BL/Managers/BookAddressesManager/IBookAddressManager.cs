using BookAddess.DAL.Entities.Models;
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
           string fullName = null,
           string mobileNumber = null,
           string email = null,
           string address = null,
           DateOnly? birthDateFrom = null,
           DateOnly? birthDateTo = null,
           Guid? jobId = null,
           Guid? departmentId = null,
           int? age = null); 
        Task<FileResult> ExportBookAddressInExcelFiles();
    }
}
