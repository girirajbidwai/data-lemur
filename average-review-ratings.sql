with cte as(
  select EXTRACT(month from submit_date) as mth,product_id,stars from reviews
)

select mth,product_id product,ROUND((1.0*SUM(stars)/COUNT(stars)),2) 
as avg_stars from cte GROUP BY mth, product_id
order by mth,product,avg_stars;
