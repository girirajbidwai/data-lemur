WITH top_artists AS (
        SELECT artist_name,
               COUNT(*) AS no_appearance
          FROM artists AS a
          JOIN songs AS s 
            ON s.artist_id = a.artist_id
          JOIN global_song_rank AS g
            ON g.song_id = s.song_id
         WHERE g.rank < 11
         GROUP BY artist_name
)
SELECT artist_name,
       artist_rank
  FROM (
        SELECT artist_name,
               DENSE_RANK() OVER(ORDER BY no_appearance DESC) AS artist_rank
          FROM top_artists
          ) AS top
 WHERE artist_rank < 6
