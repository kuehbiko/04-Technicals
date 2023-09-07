/*
https://datalemur.com/questions/sql-case-marvel-avengers

Delve into the Marvel Avengers dataset and write a query to categorize the superheroes based on their average likes as follows:

Super Likes: Superheroes with an average likes count greater than or equal to 15,000.
Good Likes: Superheroes with an average likes count between 5,000 and 14,999 (inclusive).
Low Likes: Superheroes with an average likes count less than 5,000.
Display the superhero's character name, platform, average likes, and the corresponding likes category.

marvel_avengers Schema:
Column | Name	| Type | Description
actor	varchar	The name of the actor who portrays the Marvel Avengers character.
character	varchar	The name of the Marvel Avengers character.
superhero_alias	varchar	The superhero alias or code name of the character.
platform	varchar	The social media platform where the character has a presence.
followers	integer	The number of followers or subscribers on the character's social media platform.
posts	integer	The total number of posts made by the character on the social media platform.
engagement_rate	decimal(5,2)	The engagement rate of the character's posts on the social media platform.
avg_likes	integer	The average number of likes received on the character's posts.
avg_comments	integer	The average number of comments received on the character's posts.
*/

SELECT
  actor,
  character,
  platform,
  avg_likes,
  CASE
    WHEN avg_likes >= 15000 THEN 'Super Likes'
    WHEN avg_likes BETWEEN 5000 AND 14999 THEN 'Good Likes'
    ELSE 'Low Likes'
  END AS likes_category
FROM marvel_avengers 
ORDER BY avg_likes DESC
;
