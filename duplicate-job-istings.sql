WITH cte AS (
  SELECT 
    company_id, 
    title, 
    description, 
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description
)

select COUNT(DISTINCT company_id) as duplicate_companies from cte where job_count > 1;
