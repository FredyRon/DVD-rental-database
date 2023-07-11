WITH movie_rentals AS (
    SELECT f.film_id, f.title, COUNT(r.rental_id) AS rental_count
    FROM film f
    JOIN inventory i ON f.film_id = i.film_id
    JOIN rental r ON i.inventory_id = r.inventory_id
    GROUP BY f.film_id, f.title
)
SELECT *
FROM movie_rentals
ORDER BY rental_count DESC;