/*
https://datalemur.com/questions/second-day-confirmation

Assume you're given tables with information about TikTok user sign-ups and confirmations through email and text. New users on TikTok sign up using their email addresses, and upon sign-up, each user receives a text message confirmation to activate their account.

Write a query to display the user IDs of those who did not confirm their sign-up on the first day, but confirmed on the second day.

Definition:

action_date refers to the date when users activated their accounts and confirmed their sign-up through text messages.
*/

SELECT
  e.user_id
FROM emails e
JOIN texts t
  ON e.email_id = t.email_id
WHERE 
  EXTRACT(DAY FROM e.signup_date)+1 = EXTRACT(DAY FROM t.action_date)
  AND signup_action = 'Confirmed';
