select count(Distinct(a.user_id)) as "laptop_views", 
count(Distinct(b.user_id)) as "mobile_views"
from viewership as a
inner Join viewership as b 
on  a.device_type='laptop' and b.device_type in ('tablet', 'phone')
