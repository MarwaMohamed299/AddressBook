﻿
namespace BookAddress.BL.DTOs.UserDTOs
{
    public class LogInResultDto
    {
        public bool IsSuccess { get; set; }
        public string? Message { get; set; }
        public string? Token { get; set; }
        public DateTime? ExpiryDate { get; set; }
    }
}
