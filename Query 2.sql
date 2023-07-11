--amount of time rented the movie ordered from smallest to largest
SELECT return_date - rental_date AS tiempo_transcurrido
FROM rental
ORDER BY tiempo_transcurrido ASC
