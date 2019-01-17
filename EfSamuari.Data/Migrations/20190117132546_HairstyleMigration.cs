using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EfSamurai.Data.Migrations
{
    public partial class HairstyleMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "HairId",
                table: "Samurais",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Hairstyle",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    HairstyleName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Hairstyle", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Samurais_HairId",
                table: "Samurais",
                column: "HairId");

            migrationBuilder.AddForeignKey(
                name: "FK_Samurais_Hairstyle_HairId",
                table: "Samurais",
                column: "HairId",
                principalTable: "Hairstyle",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Samurais_Hairstyle_HairId",
                table: "Samurais");

            migrationBuilder.DropTable(
                name: "Hairstyle");

            migrationBuilder.DropIndex(
                name: "IX_Samurais_HairId",
                table: "Samurais");

            migrationBuilder.DropColumn(
                name: "HairId",
                table: "Samurais");
        }
    }
}
