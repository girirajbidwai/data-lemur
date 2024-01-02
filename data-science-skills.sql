with cte as(SELECT c1.candidate_id,c1.skill,c2.skill FROM candidates c1 JOIN candidates c2 
on c1.candidate_id = c2.candidate_id and (c1.skill = 'Python' or c1.skill = 'Tableau') 
and c2.skill = 'PostgreSQL')

select DISTINCT(candidate_id) from cte;
