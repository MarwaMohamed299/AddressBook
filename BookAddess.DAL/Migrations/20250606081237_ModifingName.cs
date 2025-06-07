using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BookAddess.DAL.Migrations
{
    /// <inheritdoc />
    public partial class ModifingName : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Name",
                table: "AddressBooks");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "AddressBooks",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
