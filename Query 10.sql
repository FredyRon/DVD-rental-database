WITH customer_rentals AS (
    SELECT c.customer_id, c.first_name, c.last_name, fc.category_id, COUNT(r.rental_id) AS rental_count,
        ROW_NUMBER() OVER (PARTITION BY fc.category_id ORDER BY COUNT(r.rental_id) DESC) AS rank
    FROM customer c
    JOIN rental r ON c.customer_id = r.customer_id
    JOIN inventory i ON r.inventory_id = i.inventory_id
    JOIN film f ON i.film_id = f.film_id
    JOIN film_category fc ON f.film_id = fc.film_id
    GROUP BY c.customer_id, c.first_name, c.last_name, fc.category_id
)
SELECT cr.customer_id, cr.first_name, cr.last_name, c.name AS category, cr.rental_count
FROM customer_rentals cr
JOIN category c ON cr.category_id = c.category_id
WHERE cr.rank = 1;