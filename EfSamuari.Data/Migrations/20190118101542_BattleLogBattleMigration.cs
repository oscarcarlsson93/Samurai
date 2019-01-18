using Microsoft.EntityFrameworkCore.Migrations;

namespace EfSamurai.Data.Migrations
{
    public partial class BattleLogBattleMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Battles_BattleLogId",
                table: "Battles");

            migrationBuilder.CreateIndex(
                name: "IX_Battles_BattleLogId",
                table: "Battles",
                column: "BattleLogId",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Battles_BattleLogId",
                table: "Battles");

            migrationBuilder.CreateIndex(
                name: "IX_Battles_BattleLogId",
                table: "Battles",
                column: "BattleLogId");
        }
    }
}
