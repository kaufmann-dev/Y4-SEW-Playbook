using Microsoft.EntityFrameworkCore;
using Model.Entities;
using Model.Entities.Abilities;
using Model.Entities.Creatures;
using Model.Entities.Events;
using Model.Entities.Items;

namespace Model.Configurations;

public class PlaybookDBContext : DbContext {
    public DbSet<Book> Books { get; set; }
    public DbSet<Author> Authors { get; set; }
    public DbSet<BookAuthor> BookAuthors { get; set; }
    public DbSet<Section> Sections { get; set; }
    public DbSet<StorySection> StorySections { get; set; }
    public DbSet<RuleSection> RuleSections { get; set; }
    public DbSet<Outcome> Outcomes { get; set; }

    public DbSet<AAbility> AAbilities { get; set; }
    public DbSet<AnimalKinship> AnimalKinships { get; set; }
    public DbSet<Camouflage> Camouflages { get; set; }
    public DbSet<Healing> Healings { get; set; }
    public DbSet<Hunting> Huntings { get; set; }
    public DbSet<Mindblast> Mindblasts { get; set; }
    public DbSet<MindOverMatter> MindOverMatters { get; set; }
    public DbSet<Mindshield> Mindshields { get; set; }
    public DbSet<SixthSense> SixthSenses { get; set; }
    public DbSet<Tracking> Trackings { get; set; }
    public DbSet<Weaponskill> Weaponskills { get; set; }

    public DbSet<AItem> AItems { get; set; }
    public DbSet<Weapon> Weapons { get; set; }
    public DbSet<MagicalItem> MagicalItems { get; set; }
    public DbSet<Key> Keys { get; set; }
    public DbSet<Ultility> Ultilities { get; set; }
    public DbSet<Potion> Potions { get; set; }
    public DbSet<Scroll> Scrolls { get; set; }

    public DbSet<Creature> Creatures { get; set; }

    public DbSet<AEvent> Events { get; set; }
    public DbSet<CombatEvent> CombatEvents { get; set; }
    public DbSet<ItemEvent> ItemEvents { get; set; }
    public DbSet<MeetingEvent> MeetingEvents { get; set; }
    public DbSet<ValueEvent> ValueEvents { get; set; }
    
    public DbSet<StorySectionEvent> StorySectionEvents { get; set; }


    protected override void OnModelCreating(ModelBuilder builder) {
        builder.Entity<Book>().HasIndex((b => b.Title)).IsUnique();

        builder.Entity<RuleSection>().Property((ba => ba.SectionType)).HasConversion<string>();

        builder.Entity<BookAuthor>().Property((ba => ba.OccupationType)).HasConversion<string>();

        builder.Entity<BookAuthor>().HasKey(ba => new {
            ba.BookId,
            ba.AuthorId
        });

        builder.Entity<BookAuthor>().HasOne(ba => ba.Author).WithMany().HasForeignKey(ba => ba.AuthorId);

        builder.Entity<BookAuthor>().HasOne(ba => ba.Book).WithMany(b=>b.BookAuthorList).HasForeignKey(ba => ba.BookId);

        builder.Entity<Outcome>().HasOne(o => o.RootSection).WithMany(s => s.OutcomeList)
            .HasForeignKey(o => o.RootSectionId);

        builder.Entity<Outcome>().HasOne(o => o.Section).WithMany().HasForeignKey(o => o.SectionId);

        builder.Entity<Section>().HasOne(s => s.Book).WithMany().HasForeignKey(s => s.BookId);

        builder.Entity<AAbility>().HasIndex(ability => ability.Code).IsUnique();

        builder.Entity<AAbility>().HasDiscriminator<string>("ABILITY_TYPE").HasValue<Camouflage>("CAMOUFLAGE")
            .HasValue<Hunting>("HUNTING")
            .HasValue<SixthSense>("SIXTH_SENSE").HasValue<Tracking>("TRACKING").HasValue<Healing>("HEALING")
            .HasValue<Weaponskill>("WEAPONSKILL").HasValue<Mindshield>("MINDSHIELD").HasValue<Mindblast>("MINDBLAST")
            .HasValue<AnimalKinship>("ANIMAL_KINSHIP").HasValue<MindOverMatter>("MIND_OVER_MATTER");

        builder.Entity<AItem>().HasDiscriminator<string>("ITEM_TYPE").HasValue<Weapon>("WEAPON")
            .HasValue<MagicalItem>("MAGICAL_ITEM")
            .HasValue<Key>("KEY").HasValue<Ultility>("UTILITY").HasValue<Potion>("POTION")
            .HasValue<Scroll>("SCROLL");

        //Enum als string definieren
        //builder.Entity<Creature>().Property(creature => creature.CreatureType).HasConversion<string>();

        
        builder.Entity<AEvent>().Property(e => e.EventType).HasConversion<string>();
        
        builder.Entity<CombatEvent>().
            HasOne(ce => ce.Creature).
            WithMany().HasForeignKey(ce => ce.CreatureId);
        
        builder.Entity<ItemEvent>().
            HasOne(ie => ie.Item).
            WithMany().HasForeignKey(ie => ie.ItemId);

        builder.Entity<StorySectionEvent>().HasKey(s => new {
            s.EventId,
            s.SectionId
        });

        builder.Entity<StorySectionEvent>().
            HasOne(s => s.Event).
            WithMany().HasForeignKey(s => s.EventId);
        
        builder.Entity<StorySectionEvent>().
            HasOne(s => s.StorySection).
            WithMany().HasForeignKey(s => s.SectionId);


    }

    public PlaybookDBContext(DbContextOptions<PlaybookDBContext> dbContextOptions) : base(dbContextOptions) {
    }
}