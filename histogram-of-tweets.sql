with cte as (SELECT user_id,COUNT(tweet_id) as nums_of_posts 
from tweets where EXTRACT(year FROM tweet_date) = '2022' 
GROUP BY user_id)

SELECT nums_of_posts as tweet_bucket,count(user_id) users_num 
from cte GROUP BY nums_of_posts;
