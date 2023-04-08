-- ---------------------------------------------------------------------------- --
--   PB_ABILITIES
-- ---------------------------------------------------------------------------- --
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (1, 'Camouflage', 'CAMOUFLAGE','This Discipline enables a Kai Lord to blend in with his surroundings. In the countryside, he can hide undetected among trees and rocks and pass close to an enemy without being seen. In a town or city, it enables him to look and sound like a native of that area, and can help him to find shelter or a safe hiding place.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (2, 'Hunting', 'HUNTING', 'This skill ensures that a Kai Lord will never starve in the wild. He will always be able to hunt for food for himself except in areas of wasteland and desert. The skill also enables a Kai Lord to be able to move stealthily when stalking his prey.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (3, 'Sixth Sense','SIXTH_SENSE', 'This skill may warn a Kai Lord of imminent danger. It may also reveal the true purpose of a stranger or strange object encountered in your adventure.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (4, 'Tracking','TRACKING', 'This skill enables a Kai Lord to make the correct choice of a path in the wild, to discover the location of a person or object in a town or city and to read the secrets of footprints or tracks.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (5, 'Healing','HEALING', 'This Discipline can be used to restore ENDURANCE points lost in combat. If you possess this skill you may restore 1 ENDURANCE point to your total for every numbered section of the book you pass through in which you are not involved in combat. (This is only to be used after your ENDURANCE has fallen below its original level.) Remember that your ENDURANCE cannot rise above its original level.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (6, 'Weaponskill','WEAPONSKILL', 'Upon entering the Kai Monastery, each initiate is taught to master one type of weapon. If Weaponskill is to be one of your Kai Disciplines, pick a number in the usual way from the Random Number Table, and then find the corresponding weapon from the list below. This is the weapon in which you have skill. When you enter combat carrying this weapon, you add 2 points to your COMBAT SKILL.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (7, 'Mindshield','MINDSHIELD', 'The Darklords and many of the evil creatures in their command have the ability to attack you using their Mindforce. The Kai Discipline of Mindshield prevents you from losing any ENDURANCE points when subjected to this form of attack.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (8, 'Mindblast', 'MINDBLAST', 'This enables a Kai Lord to attack an enemy using the force of his mind. It can be used at the same time as normal combat weapons and adds two extra points to your COMBAT SKILL. Not all the creatures encountered on this adventure will be harmed by Mindblast. You will be told if a creature is immune.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (9, 'Animal Kinship','ANIMAL_KINSHIP', 'This skill enables a Kai Lord to communicate with some animals and to be able to guess the intentions of others.');
INSERT INTO ABILITIES_ST (ABILITY_ID, CODE, ABILITY_TYPE, DESCRIPTION)
VALUES (10, 'Mind Over Matter','MIND_OVER_MATTER', 'Mastery of this Discipline enables a Kai Lord to move small objects with his powers of concentration.');

-- ---------------------------------------------------------------------------- --
--   ITEMS
-- ---------------------------------------------------------------------------- --
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (1, 'Dagger', 'Dagger', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (2, 'Spear', 'Spear', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (3, 'Mace', 'Mace', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (4, 'Short Sword', 'Short Sword', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (5, 'Warhammer', 'Warhammer', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (6, 'Sword', 'Sword', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (7, 'Axe', 'Axe', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (8, 'Quarterstaff', 'Quarterstaff', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (9, 'Broadsword', 'Broadsword', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (10, 'Mace', 'Mace', 'WEAPON');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (11, 'Vordak Gem', 'Vordak Gem', 'MAGICAL_ITEM');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (12, 'Backpack', 'Backpack', 'UTILITY');
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (13, 'Golden Key', 'Golden Key', 'KEY');

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 17
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (1, 'Kraan', 16, 24);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (1, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (1, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (19, 1);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 20
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (2, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (2, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (22, 2);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (3, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (3, 12);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (22, 3);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (4, 'ACQUIRE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (4, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (22, 4);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 29
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (2, 'Vordak', 18, 25);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (5, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (5, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (31, 5);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 33
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (6, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (6, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (35, 6);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 34
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (7, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (7, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (36, 7);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 37
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (8, 'DECREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (8, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (39, 8);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 43
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (3, 'Black Bear', 16, 10);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (9, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (9, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (45, 9);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 55
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (4, 'Giak', 9, 9);
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (10, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (10, 4);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (57, 10);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (11, 'INCREASE_COMBAT_SKILL_TEMPORARY');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (11, 4);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (57, 11);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 62
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (12, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (12, 28);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (64, 12);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (13, 'INCREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (13, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (64, 13);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (14, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (14, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (64, 14);

-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (14, 'Crossbos', 'Crossbow', 'WEAPON');
INSERT INTO EVENTS_BT (EVENT_ID,EVENT_TYPE)
VALUES (15, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (15, 14);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (64, 15);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 63
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (5, 'Madman', 11, 10);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (16, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (16, 5);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (65, 16);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 72
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (6, 'Giakrider', 15, 24);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (17, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (17, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (75, 17);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 76
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (18, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (18, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (79, 18);

-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (15, 'Glowing Gem', 'Glowing Gem', 'MAGICAL_ITEM');
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (19, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (19, 15);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (79, 19);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 82
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (20, 'MEETING');
INSERT INTO MEETING_EVENTS (EVENT_ID, TITLE, DESCRIPTION)
VALUES (20, 'DYING_PRINCE', 'The dying Prince ...');
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (85, 20);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 94
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (21, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (21, 16);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (96, 21);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 112
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (7, 'Giak', 13, 10);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (22, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (22, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (114, 22);

-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (8, 'Giak', 12, 10);
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (23, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (23, 8);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (114, 23);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 113
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (16, 'Laumspur', 'Each Meal of Laumspur may be consumed wehn prompted for a Meal, in which case it fulfils the Meal requirements', 'HERB');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (24, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (24, 16);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (115, 24);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (25, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (25, 16);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (115, 25);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 119
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (26, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (26, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (121, 26);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 124
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (27, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (27, 15);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (126, 27);

-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (17, 'Silver Key', 'Silver Key', 'KEY');
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (28, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (28, 17);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (126, 28);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 133
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (9, 'Winged Serpent', 16, 18);
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (29, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (29, 9);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (135, 29);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 136
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (30, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (30, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (138, 30);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (31, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (31, 8);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (138, 31);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 137
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE)
VALUES (18, 'Guardian Gems', 'Guardian Gems from crypt', 'GEM');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (32, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (32, 18);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (139, 32);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 138
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (33, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (33, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (141, 33);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (34,'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (34, 8);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (141, 34);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 144
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (35, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (35, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (147, 35);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 146
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (36, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (36, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (149, 36);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 147
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (37, 'DECREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (37, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (150, 37);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 148
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (38, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (38, 5);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (151, 38);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 158
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (39, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (39, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (161, 39);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 164
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (19, 'Alether', 'Potion of Alether', 'POTION');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (40, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (40, 19);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (168, 40);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (41, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (41, 19);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (168, 41);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 166
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (42, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (42, 4);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (170, 42);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 168
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (43, 'DECREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (43, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (172, 43);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 169
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (10, 'Crypt Spawn', 16, 16);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (44, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (44, 10);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (173, 44);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 170
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (11, 'Burrowcrawler', 17, 7);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (45, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (45, 11);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (174, 45);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 180
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (12, 'Sergant', 15, 22);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (46, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (46, 12);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (184, 46);

-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (13, 'Soldier', 13, 20);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (47, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (47, 13);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (184, 47);

-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (14, 'Soldier', 12, 20);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (48, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (48, 14);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (184, 48);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 184
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (49, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (49, 40);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (188, 49);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (50, 'INCREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, value)
VALUES (50, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (188, 50);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (51, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (51, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (188, 51);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 188
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (52, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (52, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (192, 52);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 191
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (15, 'Bodyguard', 11, 21);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (53, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (53, 15);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (195, 53);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 193
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (20, 'Giak Scroll', 'Giak Scroll', 'SCROLL');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (54, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (54, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (197, 54);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 197
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (55, 'INCREASE_GOLD');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (55, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (201, 55);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (56, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (56, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (201, 56);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 199
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (58, 'INCREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (58, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (203, 58);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 203
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (59, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (59, 10);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (207, 59);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 205
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (60, 'DROP_ALL_WEAPONS');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (60, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (209, 60);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (61, 'DROP_BACKPACK');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (61, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (209, 61);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 208
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (62, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (62, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (212, 62);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 220
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (63, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (63, 15);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (224, 63);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 227
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (16, 'Marshviper', 13, 6);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (64, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (64, 16);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (231, 64);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 229
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (65, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (65, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (233, 65);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 231
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE) VALUES
    (17, 'Robber', 13, 20);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (70, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (70, 17);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (231, 70);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 235
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (71, 'DROP_BACKPACK');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (71, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (239, 71);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 236
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (72, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (72, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (240, 72);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (73, 'DECREASE_COMBAT_SKILL');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (73, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (240, 73);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (74, 'DROP_ITEM');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (74, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (240, 74);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 243
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (75, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (75, 10);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (247, 75);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 246
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (18, 'Drakkar', 15, 23);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (76, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (76, 18);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (250, 76);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 253
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (20, 'Doomwolf', 14, 22);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (77, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (77, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (257, 77);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (78, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (78, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (257, 78);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (79, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (79, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (257, 79);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 255
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (21, 'Amethyst Sword', 'Prince Yisun Qis sword', 'MAGICAL_ITEM');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (80, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (80, 21);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (259, 80);

-- EVENT
INSERT INTO CREATURES (CREATURE_ID, CREATURE_TYPE, COMBAT_SKILL, ENDURANCE)
VALUES (21, 'Gourgaz', 20, 30);

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (81, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (81, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (259, 81);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 258
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (82, 'DROP_ALL_WEAPONS');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (82, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (262, 82);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (83, 'DROP_BACKPACK');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (83, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (262, 83);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 260
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (84, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (84, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (264, 84);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (85, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (85, 8);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (264, 85);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 263
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (86, 'INCREASE_GOLD_AMOUNT');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (86, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (267, 86);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 267
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (87, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (87, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (271, 87);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (88, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (88, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (271, 88);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 269
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (89, 'INCREASE_GOLD_AMOUNT');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (89, 3);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (273, 89);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 274
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (90, 'DROP_ALL_WEAPONS');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (90, 0);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT(SECTION_ID, EVENT_ID)
VALUES (278, 90);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 276
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (92, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (92, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (280, 92);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 277
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (93, 'DROP_WEAPON');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (93, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (281, 93);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 283
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (94, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (94, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (287, 94);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (95, 'INCREASE_COMBAT_SKILL_TEMPORARY');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (95, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (287, 95);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 290
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (96, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (96, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (294, 96);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 291
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (97, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (97, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (295, 97);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (98, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (98, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (295, 98);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (99, 'INCREASE_GOLD_AMOUNT');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (99, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (295, 99);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 300
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (100, 'DECREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (100, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (304, 100);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 304
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (101, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (101, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (308, 101);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID,EVENT_TYPE)
VALUES (102, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (102, 15);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (308, 102);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 305
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (103, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (103, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (309, 103);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 307
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (104, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (104, 5);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (311, 104);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (105, 'INCREASE_RATION');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (105, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (311, 105);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 308
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (106, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, value)
VALUES (106, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (312, 106);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 313
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (107, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (107, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (317, 107);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 315
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (108, 'INCREASE_GOLD_AMOUNT');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (108, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (319, 108);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 319
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (109, 'INCREASE_GOLD_AMOUNT');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (109, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (323, 109);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (110, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (110, 1);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (323, 110);


-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 320
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (111, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (111, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (324, 111);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 336
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (112, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (112, 7);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (340, 112);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (113, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (113, 8);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (340, 113);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 339
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (114, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (114, 17);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (343, 114);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 340
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (115, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (115, 20);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (344, 115);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 342
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (116, 'COMBAT');
INSERT INTO COMBAT_EVENTS (EVENT_ID, CREATURE_ID)
VALUES (116, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (346, 116);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 343
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (117, 'DECREASE_ENDURANCE');
INSERT INTO VALUE_EVENTS (EVENT_ID, VALUE)
VALUES (117, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (347, 117);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 346
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (118, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (118, 2);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (350, 118);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 347
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (22, 'Torch', 'Torch', 'UTILITY');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (119, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (119, 22);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (351, 119);

-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (23, 'Tinderbox', 'Tinderbox', 'UTILITY');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (120, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (120, 23);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (351, 120);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (121, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (121, 6);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (351, 121);

-- ---------------------------------------------------------------------------- --
--  STORY_SECTION: 349
-- ---------------------------------------------------------------------------- --
-- EVENT
INSERT INTO ITEMS_ST (ITEM_ID, NAME, DESCRIPTION, ITEM_TYPE) VALUES
    (24, 'Crystal Star', 'Crystal Start', 'MAGICAL_ITEM');

INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (122, 'ACQUIRE');
INSERT INTO ITEM_EVENTS (EVENT_ID, ITEM_ID)
VALUES (122, 24);
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (353, 122);

-- EVENT
INSERT INTO EVENTS_BT (EVENT_ID, EVENT_TYPE)
VALUES (123, 'MEETING');
INSERT INTO MEETING_EVENTS (EVENT_ID, TITLE, DESCRIPTION)
VALUES (123, 'BANEDON', 'Apprenteace of the Crystal Star Pendant ... ');
INSERT INTO STORY_SECTION_HAS_EVENTS_JT (SECTION_ID, EVENT_ID)
VALUES (353, 123);

commit;