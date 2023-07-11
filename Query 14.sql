SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, SUM(p.amount) AS total_amount
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY a.actor_id, actor_name
ORDER BY total_amount DESC;
