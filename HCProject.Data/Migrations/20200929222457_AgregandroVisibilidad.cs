using Microsoft.EntityFrameworkCore.Migrations;

namespace HCProject.Data.Migrations
{
    public partial class AgregandroVisibilidad : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Visibilidad",
                table: "Curriculos",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Visibilidad",
                table: "Curriculos");
        }
    }
}
