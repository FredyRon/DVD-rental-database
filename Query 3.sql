SELECT 
    MAX(rental_duration) AS max_rental_duration,
    MIN(rental_duration) AS min_rental_duration,
    AVG(rental_duration) AS average_rental_duration,
    COUNT(*) AS total_movies
FROM film;