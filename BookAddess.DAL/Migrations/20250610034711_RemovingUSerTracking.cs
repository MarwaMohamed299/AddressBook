 using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace BookAddess.DAL.Migrations
{
    /// <inheritdoc />
    public partial class RemovingUSerTracking : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AddressBooks_AspNetUsers_UserId",
                table: "AddressBooks");

            migrationBuilder.DropIndex(
                name: "IX_AddressBooks_UserId",
                table: "AddressBooks");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "AddressBooks");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "UserId",
                table: "AddressBooks",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_AddressBooks_UserId",
                table: "AddressBooks",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_AddressBooks_AspNetUsers_UserId",
                table: "AddressBooks",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
