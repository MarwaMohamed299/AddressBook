using BookAddess.DAL.Entities.Models;
using BookAddess.DAL.Repos.BookAddesses;
using BookAddress.BL.DTOs.BookAddressDTOs;
using BookAddress.BL.Services.FileService;
using Microsoft.AspNetCore.Mvc;
using OfficeOpenXml;
using System.Data;


namespace BookAddress.BL.Services.BookAddressesManager
{
    public class BookAddressManager : IBookAddressManager
    {
        private readonly IBookAddressRepo _repo;
        private readonly IFileService _fileService;

        public BookAddressManager(IBookAddressRepo repo , IFileService fileService)
        {
            _repo = repo;
            _fileService = fileService;
        }

        #region CRUD
        public async Task<IEnumerable<AddressBookReadDto>> GetAllAsync()
        {
            var entities = await _repo.GetAllAsync();
            return entities.Select(MapToDto);
        }

        public async Task<AddressBookReadDto> GetByIdAsync(Guid id)
        {
            var entity = await _repo.GetByIdAsync(id);
            return entity == null ? null : MapToDto(entity);
        }

        public async Task<AddressBookReadDto> AddAsync(BookAddressCreateUpdateDto dto)
        {
            string photoPath = null!;
            if (dto.Photo != null)
            {
                photoPath = await _fileService.UploadPhotoAsync(dto.Photo);
            }

            var entity = new AddressBook
            {
                FullName = dto.FullName,
                MobileNumber = dto.MobileNumber,
                DateOfBirth = dto.DateOfBirth,
                Address = dto.Address,
                Email = dto.Email,
                PhotoPath = photoPath, 
                JobId = dto.JobId,
                DepartmentId = dto.DepartmentId,
                UserId = dto.UserId
            };

            var result = await _repo.AddAsync(entity);
            return MapToDto(result);
        }

        public async Task<AddressBookReadDto> UpdateAsync(Guid id, BookAddressCreateUpdateDto dto)
        {
            var entity = await _repo.GetByIdAsync(id);
            if (entity == null) return null!;

            if (dto.Photo != null)
            {
                if (!string.IsNullOrEmpty(entity.PhotoPath))
                {
                    var oldFilePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot",
                                                 entity.PhotoPath.TrimStart('/'));
                    if (File.Exists(oldFilePath))
                    {
                        File.Delete(oldFilePath);
                    }
                }

                entity.PhotoPath = await _fileService.UploadPhotoAsync(dto.Photo);
            }

            entity.FullName = dto.FullName;
            entity.MobileNumber = dto.MobileNumber;
            entity.DateOfBirth = dto.DateOfBirth;
            entity.Address = dto.Address;
            entity.Email = dto.Email;
            entity.JobId = dto.JobId;
            entity.DepartmentId = dto.DepartmentId;
            entity.UserId = dto.UserId;

            var updated = await _repo.UpdateAsync(entity);

            return MapToDto(updated);
        }


        public async Task<bool> DeleteAsync(Guid id)
        {
            return await _repo.DeleteAsync(id);
        }

        #endregion

        #region Search 
        public async Task<IEnumerable<AddressBookReadDto>> SearchAsync(
            string searchTerm,
            DateOnly? birthDateFrom = null,
            DateOnly? birthDateTo = null)
        {
            var entities = await _repo.SearchAsync(searchTerm, birthDateFrom, birthDateTo);
            return entities.Select(MapToDto);
        }
        #endregion

        #region Mapping
        private AddressBookReadDto MapToDto(AddressBook entity)
        {
            return new AddressBookReadDto
            {
                Id = entity.Id,
                FullName = entity.FullName,
                MobileNumber = entity.MobileNumber,
                DateOfBirth = entity.DateOfBirth,
                Address = entity.Address,
                Email = entity.Email,
                PhotoPath = entity.PhotoPath,
                JobId = entity.JobId,
                JobName = entity.Job?.Name,
                DepartmentId = entity.DepartmentId,
                DepartmentName = entity.Department?.Name,
                UserId = entity.UserId
            };
        }

        #endregion

        #region Excel File Methods
        public async Task<FileResult> ExportBookAddressInExcelFiles()
        {
            var bookAddresses = await _repo.GetAllAsync();
            var fileName = "BookAddress.xlsx";
            var fileBytes = GenerateExcel(fileName, bookAddresses);
            return new FileContentResult(fileBytes,
                   "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
            {
                FileDownloadName = fileName
            };
        }

        private byte[] GenerateExcel(string fileName, IEnumerable<AddressBook> addressBooks)
        {
            ExcelPackage.License.SetNonCommercialPersonal("Marwa Ghonem");

            using var package = new ExcelPackage();
            var worksheet = package.Workbook.Worksheets.Add("AddressBook");

            worksheet.Cells[1, 1].Value = "Id";
            worksheet.Cells[1, 2].Value = "Full Name";
            worksheet.Cells[1, 3].Value = "Mobile Number";
            worksheet.Cells[1, 4].Value = "Date of Birth";
            worksheet.Cells[1, 5].Value = "Age";
            worksheet.Cells[1, 6].Value = "Address";
            worksheet.Cells[1, 7].Value = "Email";
            worksheet.Cells[1, 8].Value = "Photo Path";
            worksheet.Cells[1, 9].Value = "Job Id";
            worksheet.Cells[1, 10].Value = "Job Name";
            worksheet.Cells[1, 11].Value = "Department Id";
            worksheet.Cells[1, 12].Value = "Department Name";
            worksheet.Cells[1, 13].Value = "User Id";

            int row = 2;
            foreach (var entry in addressBooks)
            {
                worksheet.Cells[row, 1].Value = entry.Id;
                worksheet.Cells[row, 2].Value = entry.FullName;
                worksheet.Cells[row, 3].Value = entry.MobileNumber;
                worksheet.Cells[row, 4].Value = entry.DateOfBirth.ToString("yyyy-MM-dd");
                worksheet.Cells[row, 5].Value = CalculateAge(entry.DateOfBirth);
                worksheet.Cells[row, 6].Value = entry.Address;
                worksheet.Cells[row, 7].Value = entry.Email;
                worksheet.Cells[row, 8].Value = entry.PhotoPath;
                worksheet.Cells[row, 9].Value = entry.JobId;
                worksheet.Cells[row, 10].Value = entry.Job?.Name;
                worksheet.Cells[row, 11].Value = entry.DepartmentId;
                worksheet.Cells[row, 12].Value = entry.Department?.Name;
                worksheet.Cells[row, 13].Value = entry.UserId;
                row++;
            }

            worksheet.Cells[worksheet.Dimension.Address].AutoFitColumns();

            return package.GetAsByteArray();
        }
        #endregion

        #region Helper Methods
        private int CalculateAge(DateOnly birthDate)
        {
            var today = DateOnly.FromDateTime(DateTime.Now);
            var age = today.Year - birthDate.Year;
            if (birthDate > today.AddYears(-age)) age--;
            return age;
        }
        #endregion
    }
}

