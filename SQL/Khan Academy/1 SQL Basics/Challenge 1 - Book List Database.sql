-- What are your favorite books? You can make a database table to store them in! 
-- In this first step, create a table to store your list of books. 
-- It should have columns for id, name, and rating.

CREATE TABLE book_list 
  ("id" NUMERIC, "name" TEXT, "author" TEXT, "rating" NUMERIC);

INSERT INTO book_list 
  ("id", "name", "author", "rating")
VALUES
  ("1", "The Magician's Nephew", "CS Lewis", "4"),
  ("2", "A Wrinkle in Time", "Madaleine L'Engle", "5"),
  ("3", "QED", "Richard Feynman", "3");
