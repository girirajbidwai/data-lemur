SELECT sender_id,count(message_id) as message_count 
FROM messages where EXTRACT(month from sent_date) = 8 
and EXTRACT(year from sent_date) = 2022 
group by sender_id having COUNT(message_id) > 1 ORDER BY message_count desc;
