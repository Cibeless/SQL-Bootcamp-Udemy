--SQL - Udemy Exercise LEFT - RIGHT OUTER JOIN

-- LEFT / RIGHT OUTER JOIN

-- order matters for the left outer join!!!!
--LEFT OUTER JOIN RESULTS IN THE SET OF RECORDS THAT ARE IN THE LEFT TABLE
-- IN THER IS NO MATCH WITHT THE RIGHT TABLE THE RESULTS ARE NULL
-- Veen diagram (considera apenas um dos conjuntos por inteiro)

-- LEFT OUTER JOIN + WHERE
-- get rows unique to left table
-- row found only in table A
-- is not semetric join

--Exemple 01
-- Junção a esquerda que nos mostre a junção do film no inventario

SELECT * FROM film

SELECT * FROM inventory


SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id --pq algumas linhas na tabela de filmes não telinhas correspondentes na tabela inventario

-- EXERCISE 02 Where film_id and inventory não tem invetory and story?

SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null -- inventory null - onde o inventrio é nulo



-- RIGHT JOIN
--PS.:  RIGHT JOIN = is the same as a left join except the tables are switched


-- UNION
-- UNION - COMBINE THE RESULT SET OF TWO OR MORE SELECT STATEMENTS
-- SERVES TO DIRECTLY CONCATENATE TWO RESULTS TOGETHER, ESSENTIALLY "PASTING" THEM TOGETHER
-- COCATENTATE TWO RESULTES OR MORE

--exemple:
-- SELECT column_name FROM table1
-- UNION
--SELECT column_name FROM table2


-- *Exercise 01:
-- We are launching a platinum service for our most loyal customers. 
--We will assign platinum status to customers that have had 40 or more transactions payment
-- What customer_ids are elegible for platinum status

SELECT * FROM payment


SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*)>= 40

