/*
Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.
*/


/* What does the app's SQL look like? */

CREATE TABLE raiderio (id INTEGER PRIMARY KEY AUTOINCREMENT, 
                       dungeon TEXT, 
                       player_spec TEXT,
                       player_class TEXT,
                       player_role TEXT,
                       score INTEGER);
INSERT INTO raiderio(dungeon, player_spec, player_class, player_role, score) 
  VALUES ('The Underrot', 'Augmentation', 'Evoker', 'DPS', 264.5);
INSERT INTO raiderio(dungeon, player_spec, player_class, player_role, score) 
  VALUES ('Neltharus', 'Fury', 'Warrior', 'DPS', 237.8);
INSERT INTO raiderio(dungeon, player_spec, player_class, player_role, score) 
  VALUES ("Neltharion's Lair", 'Holy', 'Paladin', 'Healer', 241.5);
INSERT INTO raiderio(dungeon, player_spec, player_class, player_role, score) 
  VALUES ('Brackenhide Hollow', 'Augmentation', 'Evoker', 'DPS', 65.7);
INSERT INTO raiderio(dungeon, player_spec, player_class, player_role, score) 
  VALUES ('Brackenhide Hollow', 'Guardian', 'Druid', 'Healer', 120.6);

-- Update 'Guardian Druid' as 'Tank'
UPDATE raiderio SET player_role = "Tank"
    WHERE player_spec||' '||player_class = 'Guardian Druid';
  
SELECT * FROM raiderio;

-- Delete all recorded Neltharus runs
DELETE FROM raiderio
    WHERE dungeon = 'Neltharus';

SELECT * FROM raiderio;
