SELECT
  app_id,
  round(100.0 *
    count(case when event_type='click' then 1 else null end)/
    count(case when event_type='impression' then 1 else null end),2) as ctr_rate
FROM events 
WHERE timestamp >= '2022-01-01' 
  AND timestamp < '2023-01-01'
group by app_id;
