using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Model.Migrations
{
    public partial class miggers2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "STORY_SECTION_HAS_EVENTS_JT",
                columns: table => new
                {
                    SECTION_ID = table.Column<int>(type: "int", nullable: false),
                    EVENT_ID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_STORY_SECTION_HAS_EVENTS_JT", x => new { x.EVENT_ID, x.SECTION_ID });
                    table.ForeignKey(
                        name: "FK_STORY_SECTION_HAS_EVENTS_JT_EVENTS_BT_EVENT_ID",
                        column: x => x.EVENT_ID,
                        principalTable: "EVENTS_BT",
                        principalColumn: "EVENT_ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_STORY_SECTION_HAS_EVENTS_JT_SECTIONS_BT_SECTION_ID",
                        column: x => x.SECTION_ID,
                        principalTable: "SECTIONS_BT",
                        principalColumn: "SECTION_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_STORY_SECTION_HAS_EVENTS_JT_SECTION_ID",
                table: "STORY_SECTION_HAS_EVENTS_JT",
                column: "SECTION_ID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "STORY_SECTION_HAS_EVENTS_JT");
        }
    }
}
