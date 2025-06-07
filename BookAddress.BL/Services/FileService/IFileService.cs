using Microsoft.AspNetCore.Http;


namespace BookAddress.BL.Services.FileService
{
    public interface IFileService
    {
        Task<string> UploadPhotoAsync(IFormFile photo);
    }
}
