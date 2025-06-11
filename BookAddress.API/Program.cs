using BookAddess.DAL.Context;
using BookAddess.DAL.Entities.Models;
using BookAddess.DAL.Repos.BookAddesses;
using BookAddess.DAL.Repos.Departments;
using BookAddess.DAL.Repos.Jobs;
using BookAddress.BL.Managers.UsersManager;
using BookAddress.BL.Services.BookAddressesManager;
using BookAddress.BL.Services.DepartmentsManager;
using BookAddress.BL.Services.FileService;
using BookAddress.BL.Services.JobsManager;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Serilog;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

try
{
    Log.Information("Starting web application");

    #region ConnectionString
    var ConnectionString = builder.Configuration.GetConnectionString("BookAddresSystem");
    builder.Services.AddDbContext<BookAddressContext>(options => options.UseSqlServer(ConnectionString));
    #endregion

    #region Logging

    Log.Logger = new LoggerConfiguration()
        .ReadFrom
        .Configuration(builder.Configuration)
        .CreateLogger();



    #endregion

    #region Services


    #region Default Services

    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();
    builder.Services.AddSwaggerGen();

    #endregion

    #region Logger

    builder.Host.UseSerilog();

    #endregion


    #region Identity

    builder.Services.AddIdentity<User, IdentityRole<Guid>>(options =>
    {
        options.Password.RequireLowercase = false;
        options.Password.RequireUppercase = false;
        options.Password.RequireNonAlphanumeric = false;
        options.Password.RequiredLength = 5;
        options.User.RequireUniqueEmail = true;
        options.Lockout.MaxFailedAccessAttempts = 3;
        options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromMinutes(10);
    })
        .AddEntityFrameworkStores<BookAddressContext>()
        .AddDefaultTokenProviders();

    builder.Services.AddAuthentication(options =>
    {
        options.DefaultAuthenticateScheme = "default";
        options.DefaultScheme = "default";
        options.DefaultChallengeScheme = "default";
    })

    .AddJwtBearer("default", options =>
    {
        //GenerateKey

        var secretKey = builder.Configuration.GetValue<string>("SecretKey");
        var secretKeyInBytes = Encoding.ASCII.GetBytes(secretKey!);
        var Key = new SymmetricSecurityKey(secretKeyInBytes);

        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer = false,
            ValidateAudience = false,
            IssuerSigningKey = Key

        };
    });


    #endregion


    #region Add Cors

    builder.Services.AddCors(options =>
    {
        options.AddPolicy("AllowAll", builder =>
        {
            builder.AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader();
        });
    });

    #endregion


    #region DI

    builder.Services.AddScoped<IJobRepo, JobRepo>();
    builder.Services.AddScoped<IDepartmentRepo, DepartmentRepo>();
    builder.Services.AddScoped<IBookAddressRepo, BookAddressRepo>();


    builder.Services.AddScoped<IJobManager, JobManager>();
    builder.Services.AddScoped<IDepartmentManager, DepartmentManager>();
    builder.Services.AddScoped<IBookAddressManager, BookAddressManager>();
    builder.Services.AddScoped<IUserManager, UserManager>();

    builder.Services.AddScoped<IFileService, FileService>();

    #endregion

    #endregion


    var app = builder.Build();


    #region Middlewares

    app.UseSwagger();
    app.UseSwaggerUI();

    app.UseCors("AllowAll");

    
    app.UseSerilogRequestLogging();

    app.UseStaticFiles();
    app.UseHttpsRedirection();

    app.UseAuthentication();

    app.UseAuthorization();

    app.MapControllers();

    app.Run();

    #endregion
}
catch (Exception ex) when (ex is not HostAbortedException)
{
    Log.Fatal(ex, "Application terminated unexpectedly");
}
finally
{
    Log.CloseAndFlush();
}