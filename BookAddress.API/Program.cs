using BookAddess.DAL.Context;
using BookAddess.DAL.Repos.BookAddesses;
using BookAddess.DAL.Repos.Departments;
using BookAddess.DAL.Repos.Jobs;
using BookAddress.BL.Services.BookAddressesManager;
using BookAddress.BL.Services.DepartmentsManager;
using BookAddress.BL.Services.FileService;
using BookAddress.BL.Services.JobsManager;
using Microsoft.EntityFrameworkCore;
using Serilog;

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

    //#region Authentication

    //builder.Services.AddAuthentication(options =>
    //{
    //    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    //    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    //})
    //.AddJwtBearer(options =>
    //{
    //    options.Authority = builder.Configuration["JwtSettings:Authority"];
    //    options.Audience = builder.Configuration["JwtSettings:Audience"];

    //    var keyString = builder.Configuration["JwtSettings:Key"];
    //    var keyInBytes = Encoding.UTF8.GetBytes(keyString!);
    //    var key = new SymmetricSecurityKey(keyInBytes);
    //    options.TokenValidationParameters = new TokenValidationParameters
    //    {
    //        ValidateIssuer = false,
    //        ValidateAudience = false,
    //        ValidIssuer = builder.Configuration["JwtSettings:Issuer"],
    //        ValidAudience = builder.Configuration["JwtSettings:Audience"],
    //        IssuerSigningKey = key
    //    };
    //});


    //#endregion

    //#region Global Services

    //builder.Services.AddLocalization(options
    //    => options.ResourcesPath = "Resources/ResourcesFiles");
    //builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();



    //#endregion

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