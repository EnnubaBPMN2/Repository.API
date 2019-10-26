using Microsoft.EntityFrameworkCore.Migrations;

namespace Repository.API.Migrations
{
    public partial class SeedRoleData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(
                  @"INSERT [Role] ([Id], [Name]) VALUES (1, N'Administrador')
                    INSERT [Role] ([Id], [Name]) VALUES (2, N'Captador de Datos')
                    INSERT [Role] ([Id], [Name]) VALUES (3, N'Reporteador')");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.Sql(@"DELETE FROM [Role]");
        }
    }
}
