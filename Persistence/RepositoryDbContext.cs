using Microsoft.EntityFrameworkCore;
using Repository.API.Entities;

namespace Repository.API.Persistence
{
    public class RepositoryDbContext : DbContext
    {
        public RepositoryDbContext(DbContextOptions dbContextOptions)
            : base(dbContextOptions)
        {
        }

        public DbSet<Role> Roles { get; set; }
    }
}