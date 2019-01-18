﻿using Microsoft.EntityFrameworkCore.Migrations;

namespace EfSamurai.Data.Migrations
{
    public partial class Battlelog2Migration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Battles_BattleLog_BattleLogId",
                table: "Battles");

            migrationBuilder.AlterColumn<int>(
                name: "BattleLogId",
                table: "Battles",
                nullable: false,
                oldClrType: typeof(int),
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Battles_BattleLog_BattleLogId",
                table: "Battles",
                column: "BattleLogId",
                principalTable: "BattleLog",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Battles_BattleLog_BattleLogId",
                table: "Battles");

            migrationBuilder.AlterColumn<int>(
                name: "BattleLogId",
                table: "Battles",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddForeignKey(
                name: "FK_Battles_BattleLog_BattleLogId",
                table: "Battles",
                column: "BattleLogId",
                principalTable: "BattleLog",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
