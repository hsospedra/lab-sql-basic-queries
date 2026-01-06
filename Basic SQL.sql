USE sakila;

-- =====================================================
-- 1. Display all available tables in the Sakila database
-- =====================================================
SHOW TABLES;

-- =====================================================
-- 2. Retrieve all data from actor, film and customer
-- =====================================================
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- =====================================================
-- 3. Retrieve specific columns
-- =====================================================

-- 3.1 Titles of all films
SELECT title
FROM film;

-- 3.2 List of languages used in films
SELECT name AS language
FROM language;

-- 3.3 First names of all employees
SELECT first_name
FROM staff;

-- =====================================================
-- 4. Retrieve unique release years
-- =====================================================
SELECT DISTINCT release_year
FROM film;

-- =====================================================
-- 5. Counting records for database insights
-- =====================================================

-- 5.1 Number of stores
SELECT COUNT(*) AS total_stores
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS total_employees
FROM staff;

-- 5.3 Films available for rent
SELECT COUNT(*) AS available_films
FROM inventory;

-- 5.3 Films that have been rented
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- =====================================================
-- 6. Retrieve the 10 longest films
-- =====================================================
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- =====================================================
-- 7. Filtering queries
-- =====================================================

-- 7.1 Actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- =====================================================
-- BONUS
-- =====================================================

-- 7.2 Movies with ARMAGEDDON in the title and longer than 100 minutes
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- 7.3 Number of films that include Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
