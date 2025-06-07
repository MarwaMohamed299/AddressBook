using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BookAddress.BL.Services.FileService
{
    public class FileService : IFileService
    {
        public async Task<string> UploadPhotoAsync(IFormFile photo)
        {
            #region Validate Extension
            var allowedExtensions = new[] { ".jpg", ".jpeg", ".png" };

            var extension = Path.GetExtension(photo.FileName).ToLowerInvariant();

            if (!allowedExtensions.Contains(extension))
                throw new InvalidOperationException("Invalid file type. Only JPG/PNG allowed.");

            #endregion

            #region Validate Length

            if (photo.Length > 5 * 1024 * 1024)
                throw new InvalidOperationException("File too large. Max size is 5MB.");

            #endregion

            #region Storing Image

            var uploadsFolder = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads");

            Directory.CreateDirectory(uploadsFolder);

            var uniqueFileName = $"{Guid.NewGuid()}{extension}";
            var filePath = Path.Combine(uploadsFolder, uniqueFileName);

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await photo.CopyToAsync(stream);
            }

            return $"/uploads/{uniqueFileName}";

            #endregion
        }
    }
}
