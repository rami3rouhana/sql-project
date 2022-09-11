SELECT name, earnings_rank FROM movie
WHERE earnings_rank = (
    SELECT MIN(earnings_rank)
    FROM movie
)
AND id IN (
	SELECT movie_id
	FROM oscar
	where type="best-picture"
)