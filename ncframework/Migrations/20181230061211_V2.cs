using Microsoft.EntityFrameworkCore.Migrations;

namespace ncframework.Migrations
{
    public partial class V2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "GroupId",
                table: "Employee",
                maxLength: 36,
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Employee_GroupId",
                table: "Employee",
                column: "GroupId");

            migrationBuilder.AddForeignKey(
                name: "FK_Employee_Lookup_GroupId",
                table: "Employee",
                column: "GroupId",
                principalTable: "Lookup",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Employee_Lookup_GroupId",
                table: "Employee");

            migrationBuilder.DropIndex(
                name: "IX_Employee_GroupId",
                table: "Employee");

            migrationBuilder.DropColumn(
                name: "GroupId",
                table: "Employee");
        }
    }
}
