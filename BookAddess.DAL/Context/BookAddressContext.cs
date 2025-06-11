using BookAddess.DAL.Entities.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;


namespace BookAddess.DAL.Context
{
    public class BookAddressContext :IdentityDbContext<User, IdentityRole<Guid>, Guid>
    {
        public DbSet<Job> Jobs => Set<Job>();
        public DbSet<Department> Departments => Set<Department>();
        public DbSet<AddressBook> AddressBooks => Set<AddressBook>();
        public override DbSet<User> Users => Set<User>();

        public BookAddressContext(DbContextOptions<BookAddressContext> dbContextOptions) : base(dbContextOptions)
        {
            
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<AddressBook>()
            .HasOne(a => a.Job)
            .WithMany()
            .HasForeignKey(a => a.JobId);

            modelBuilder.Entity<AddressBook>()
                .HasOne(a => a.Department)
                .WithMany()
                .HasForeignKey(a => a.DepartmentId);

           
        }
    
    }
}
