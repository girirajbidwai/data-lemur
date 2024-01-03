with cte as(select p.page_id,pl.page_id as not_liked_page 
from pages p LEFT JOIN page_likes pl on p.page_id = pl.page_id)

SELECT page_id from cte where not_liked_page is NULL;
