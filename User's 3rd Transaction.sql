with cte as(SELECT user_id,spend,transaction_date,rank() 
over(partition by user_id order by transaction_date asc) as transaction_num
from transactions)

SELECT user_id,spend,transaction_date from cte where transaction_num = 3;
