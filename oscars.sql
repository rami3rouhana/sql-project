SELECT name, earnings_rank FROM movies
WHERE earnings_rank = (
    SELECT MIN(earnings_rank)
    FROM movies
)
AND id IN (
	SELECT movies_id
	FROM oscars
	where type="best-picture"
)