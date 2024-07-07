/* 
In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?
*/

/* Create table about the people and what they do here */
CREATE TABLE raid_boss (
    unit_id INTEGER PRIMARY KEY,
    zone_id INTEGER,
    unit_name TEXT,
    unit_type TEXT,
    release_patch TEXT);
    
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (19514, 3845, "Al'ar", " Elemental", "2.2.0.7272");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (33293, 4273, "XT-002 Deconstructor", "Mechanical", "3.1.0.9767");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (36853, 4812, "Sindragosa", "Undead", "3.3.0.10772");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (36597, 4812, "The Lich King", "Undead", "3.3.2.11403");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (41378, 5094, "Maloriak", "Dragonkin", "4.0.3.13277");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (62837, 6297, "Grand Empress Shek'zeer", "Humanoid", "5.0.3.15882");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (71515, 6738, "General Nazgrim", "Humanoid", "5.4.0.17093");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (71865, 6738, "Garrosh Hellscream", "Humanoid", "5.4.0.17093");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (77325, 6967, "Blackhand", "Humanoid", "6.0.1.18322");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (103758, 8025, "Star Augur Etraeus", "Humanoid", "7.0.3.22290");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (102672, 8026, "Nythendra", "Aberration", "7.0.3.22371");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (105393, 8026, "Il'gynoth", "Aberration", "7.0.3.22290");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (174733, 13224, "Sludgefist", "Giant", "9.0.1.36228");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (168938, 13224, "Sire Denathrius", "Humanoid", "9.0.1.36216");
INSERT INTO raid_boss (unit_id, zone_id, unit_name, unit_type, release_patch) VALUES (201579, 14663, "Magmorax", "Beast", "10.1.0.49407");

CREATE table raid (
    zone_id INTEGER PRIMARY KEY,
    zone_name TEXT,
    expansion TEXT);
    
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (13561, "Sanctum of Domination", "Shadowlands");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (9389, "Uldir", "Battle for Azeroth");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (8025, "The Nighthold", "Legion");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (4812, "Icecrown Citadel", "Wrath of the Lich King");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (14663, "Aberrus, the Shadowed Crucible", "Dragonflight");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (3457, "Karazhan", "The Burning Crusade");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (6967, "Blackrock Foundry", "Warlords of Draenor");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (6297, "Heart of Fear", "Mists of Pandaria");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (4273, "Ulduar", "Wrath of the Lich King");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (5094, "Blackwing Descent", "Cataclysm");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (8026, "The Emerald Nightmare", "Legion");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (2717, "Molten Core", "Vanilla");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (6738, "Siege of Orgrimmar", "Mists of Pandaria");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (10076, "Battle of Dazar'alor", "Battle for Azeroth");
INSERT INTO raid (zone_id, zone_name, expansion) VALUES (13224, "Castle Nathria", "Shadowlands");

-- Which raids was each raid boss in?
SELECT raid_boss.unit_name, raid.zone_name
FROM raid_boss
INNER JOIN raid
    ON raid_boss.zone_id = raid.zone_id;
    
-- What about the bosses were introduced in the Legion expansion?
SELECT raid_boss.unit_name, raid.expansion
FROM raid_boss
INNER JOIN raid
    ON raid_boss.zone_id = raid.zone_id
WHERE raid.expansion = "Legion";
