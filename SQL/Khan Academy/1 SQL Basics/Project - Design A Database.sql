-- Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want store to specialize in. 
-- You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
-- You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.

CREATE TABLE auctionhouse_mounts 
  (id INTEGER PRIMARY KEY, mount_name TEXT, quantity INTEGER, price INTEGER);

INSERT INTO 
  auctionhouse_mounts 
VALUES 
  (1, "Corrupted Hippogryph", 1, 6333333),
  (2, "Reins of the Crimson Deathcharger", 4, 280000),
  (3, "Chewed-On Reins of the Terrified Pack Mule", 2, 199999.1),
  (4, "Goldenmane's Reins", 2, 399000),
  (5, "Minion of Grumpus", 4, 222222.5),
  (6, "Mottled Drake", 1, 5999999),
  (7, "Swift Lovebird", 7, 119691.69),
  (8, "Great Sea Ray", 10, 93499.93),
  (9, "Geosynchronous World Spinner", 4, 79500),
  (10, "Swift SpringStrider", 11, 69999),
  (11, "Jeweled Onyx Panther", 5, 99999),
  (12, "Amani Dragonhawk", 2, 5222222),
  (13, "Depleted-Kyparium Rocket", 5, 79500),
  (14, "Mecha-Mogul Mk2", 4, 75000),
  (15, "Reins of a Tamed Bloodfeaster", 7, 69000);

SELECT * 
FROM auctionhouse_mounts 
ORDER BY price;

SELECT SUM(quantity) 
FROM auctionhouse_mounts ;
