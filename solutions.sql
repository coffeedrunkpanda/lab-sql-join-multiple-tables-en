
-- Write a query to display for each store its store ID, city, and country.
SELECT  store.store_id,
city.city,
country.country
FROM city
JOIN country ON country.country_id = city.country_id
JOIN address ON address.city_id = city.city_id
JOIN store ON store.address_id=address.address_id

-- Write a query to display how much business, in dollars, each store brought in. ????
SELECT store.store_id,
sum(payment.amount)
FROM inventory
JOIN store ON store.store_id=inventory.store_id
JOIN rental ON rental.inventory_id=inventory.inventory_id
JOIN payment ON payment.rental_id=rental.rental_id
GROUP BY store.store_id 

-- What is the average running time (length) of films by category?
SELECT category.name, round(avg(film.length) , 2) as average_length_minutes
FROM film
JOIN film_category on film_category.film_id = film.film_id
JOIN category on category.category_id = film_category.category_id
GROUP BY film_category.category_id

-- Which film categories have the longest running time?
SELECT category.name, round(avg(film.length) , 2) as average_length_minutes
FROM film
JOIN film_category on film_category.film_id = film.film_id
JOIN category on category.category_id = film_category.category_id
GROUP BY film_category.category_id
ORDER BY average_length_minutes DESC
LIMIT 1

-- Display the most frequently rented movies in descending order.

-- List the top five genres in gross revenue in descending order.

-- Is "Academy Dinosaur" available for rent from Store 1?