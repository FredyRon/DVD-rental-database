WITH customer_rentals AS (
    SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS rental_count
    FROM customer c
    JOIN rental r ON c.customer_id = r.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
)
SELECT *
FROM customer_rentals;