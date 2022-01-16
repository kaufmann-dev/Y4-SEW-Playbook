using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Model.Migrations
{
    public partial class miggers : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "ABILITIES_ST",
                columns: table => new
                {
                    ABILITY_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    DESCRIPTION = table.Column<string>(type: "varchar(4000)", maxLength: 4000, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CODE = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ABILITY_TYPE = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ABILITIES_ST", x => x.ABILITY_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "AUTHORS",
                columns: table => new
                {
                    AUTHOR_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    FIRST_NAME = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    LAST_NAME = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AUTHORS", x => x.AUTHOR_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "BOOKS",
                columns: table => new
                {
                    BOOK_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    TITLE = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BOOKS", x => x.BOOK_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "CREATURES",
                columns: table => new
                {
                    CREATURE_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    CREATURE_TYPE = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    COMBAT_SKILL = table.Column<int>(type: "int", nullable: false),
                    ENDURANCE = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CREATURES", x => x.CREATURE_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "EVENTS_BT",
                columns: table => new
                {
                    EVENT_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    EVENT_TYPE = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EVENTS_BT", x => x.EVENT_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "ITEMS_ST",
                columns: table => new
                {
                    ITEM_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    NAME = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DESCRIPTION = table.Column<string>(type: "varchar(4000)", maxLength: 4000, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ITEM_TYPE = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ITEMS_ST", x => x.ITEM_ID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "BOOK_HAS_AUTHORS_JT",
                columns: table => new
                {
                    BOOK_ID = table.Column<int>(type: "int", nullable: false),
                    AUTHOR_ID = table.Column<int>(type: "int", nullable: false),
                    OCCUPATION_TYPE = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BOOK_HAS_AUTHORS_JT", x => new { x.BOOK_ID, x.AUTHOR_ID });
                    table.ForeignKey(
                        name: "FK_BOOK_HAS_AUTHORS_JT_AUTHORS_AUTHOR_ID",
                        column: x => x.AUTHOR_ID,
                        principalTable: "AUTHORS",
                        principalColumn: "AUTHOR_ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_BOOK_HAS_AUTHORS_JT_BOOKS_BOOK_ID",
                        column: x => x.BOOK_ID,
                        principalTable: "BOOKS",
                        principalColumn: "BOOK_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "SECTIONS_BT",
                columns: table => new
                {
                    SECTION_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    CONTENT = table.Column<string>(type: "TEXT", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    BOOK_ID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SECTIONS_BT", x => x.SECTION_ID);
                    table.ForeignKey(
                        name: "FK_SECTIONS_BT_BOOKS_BOOK_ID",
                        column: x => x.BOOK_ID,
                        principalTable: "BOOKS",
                        principalColumn: "BOOK_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "COMBAT_EVENTS",
                columns: table => new
                {
                    EVENT_ID = table.Column<int>(type: "int", nullable: false),
                    CREATURE_ID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_COMBAT_EVENTS", x => x.EVENT_ID);
                    table.ForeignKey(
                        name: "FK_COMBAT_EVENTS_CREATURES_CREATURE_ID",
                        column: x => x.CREATURE_ID,
                        principalTable: "CREATURES",
                        principalColumn: "CREATURE_ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_COMBAT_EVENTS_EVENTS_BT_EVENT_ID",
                        column: x => x.EVENT_ID,
                        principalTable: "EVENTS_BT",
                        principalColumn: "EVENT_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "MEETING_EVENTS",
                columns: table => new
                {
                    EVENT_ID = table.Column<int>(type: "int", nullable: false),
                    TITLE = table.Column<string>(type: "varchar(45)", maxLength: 45, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DESCRIPTION = table.Column<string>(type: "varchar(255)", maxLength: 255, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MEETING_EVENTS", x => x.EVENT_ID);
                    table.ForeignKey(
                        name: "FK_MEETING_EVENTS_EVENTS_BT_EVENT_ID",
                        column: x => x.EVENT_ID,
                        principalTable: "EVENTS_BT",
                        principalColumn: "EVENT_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "VALUE_EVENTS",
                columns: table => new
                {
                    EVENT_ID = table.Column<int>(type: "int", nullable: false),
                    VALUE = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VALUE_EVENTS", x => x.EVENT_ID);
                    table.ForeignKey(
                        name: "FK_VALUE_EVENTS_EVENTS_BT_EVENT_ID",
                        column: x => x.EVENT_ID,
                        principalTable: "EVENTS_BT",
                        principalColumn: "EVENT_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "ITEM_EVENTS",
                columns: table => new
                {
                    EVENT_ID = table.Column<int>(type: "int", nullable: false),
                    ITEM_ID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ITEM_EVENTS", x => x.EVENT_ID);
                    table.ForeignKey(
                        name: "FK_ITEM_EVENTS_EVENTS_BT_EVENT_ID",
                        column: x => x.EVENT_ID,
                        principalTable: "EVENTS_BT",
                        principalColumn: "EVENT_ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ITEM_EVENTS_ITEMS_ST_ITEM_ID",
                        column: x => x.ITEM_ID,
                        principalTable: "ITEMS_ST",
                        principalColumn: "ITEM_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "OUTCOMES_BT",
                columns: table => new
                {
                    OUTCOME_ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    CONTENT = table.Column<string>(type: "TEXT", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    SECTION_ID = table.Column<int>(type: "int", nullable: false),
                    ROOT_SECTION_ID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_OUTCOMES_BT", x => x.OUTCOME_ID);
                    table.ForeignKey(
                        name: "FK_OUTCOMES_BT_SECTIONS_BT_ROOT_SECTION_ID",
                        column: x => x.ROOT_SECTION_ID,
                        principalTable: "SECTIONS_BT",
                        principalColumn: "SECTION_ID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_OUTCOMES_BT_SECTIONS_BT_SECTION_ID",
                        column: x => x.SECTION_ID,
                        principalTable: "SECTIONS_BT",
                        principalColumn: "SECTION_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "RULE_SECTIONS",
                columns: table => new
                {
                    SECTION_ID = table.Column<int>(type: "int", nullable: false),
                    SECTION_TYPE = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RULE_SECTIONS", x => x.SECTION_ID);
                    table.ForeignKey(
                        name: "FK_RULE_SECTIONS_SECTIONS_BT_SECTION_ID",
                        column: x => x.SECTION_ID,
                        principalTable: "SECTIONS_BT",
                        principalColumn: "SECTION_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "STORY_SECTIONS",
                columns: table => new
                {
                    SECTION_ID = table.Column<int>(type: "int", nullable: false),
                    SECTION_NR = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_STORY_SECTIONS", x => x.SECTION_ID);
                    table.ForeignKey(
                        name: "FK_STORY_SECTIONS_SECTIONS_BT_SECTION_ID",
                        column: x => x.SECTION_ID,
                        principalTable: "SECTIONS_BT",
                        principalColumn: "SECTION_ID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_ABILITIES_ST_CODE",
                table: "ABILITIES_ST",
                column: "CODE",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_BOOK_HAS_AUTHORS_JT_AUTHOR_ID",
                table: "BOOK_HAS_AUTHORS_JT",
                column: "AUTHOR_ID");

            migrationBuilder.CreateIndex(
                name: "IX_BOOKS_TITLE",
                table: "BOOKS",
                column: "TITLE",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_COMBAT_EVENTS_CREATURE_ID",
                table: "COMBAT_EVENTS",
                column: "CREATURE_ID");

            migrationBuilder.CreateIndex(
                name: "IX_ITEM_EVENTS_ITEM_ID",
                table: "ITEM_EVENTS",
                column: "ITEM_ID");

            migrationBuilder.CreateIndex(
                name: "IX_OUTCOMES_BT_ROOT_SECTION_ID",
                table: "OUTCOMES_BT",
                column: "ROOT_SECTION_ID");

            migrationBuilder.CreateIndex(
                name: "IX_OUTCOMES_BT_SECTION_ID",
                table: "OUTCOMES_BT",
                column: "SECTION_ID");

            migrationBuilder.CreateIndex(
                name: "IX_SECTIONS_BT_BOOK_ID",
                table: "SECTIONS_BT",
                column: "BOOK_ID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ABILITIES_ST");

            migrationBuilder.DropTable(
                name: "BOOK_HAS_AUTHORS_JT");

            migrationBuilder.DropTable(
                name: "COMBAT_EVENTS");

            migrationBuilder.DropTable(
                name: "ITEM_EVENTS");

            migrationBuilder.DropTable(
                name: "MEETING_EVENTS");

            migrationBuilder.DropTable(
                name: "OUTCOMES_BT");

            migrationBuilder.DropTable(
                name: "RULE_SECTIONS");

            migrationBuilder.DropTable(
                name: "STORY_SECTIONS");

            migrationBuilder.DropTable(
                name: "VALUE_EVENTS");

            migrationBuilder.DropTable(
                name: "AUTHORS");

            migrationBuilder.DropTable(
                name: "CREATURES");

            migrationBuilder.DropTable(
                name: "ITEMS_ST");

            migrationBuilder.DropTable(
                name: "SECTIONS_BT");

            migrationBuilder.DropTable(
                name: "EVENTS_BT");

            migrationBuilder.DropTable(
                name: "BOOKS");
        }
    }
}
