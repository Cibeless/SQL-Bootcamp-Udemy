--SQL - Udemy Exercise TIMESTAMPS - EXTRACT - to_char EXERCISES

--show = show the value of a run-time parameter
--show all = nome do parametro na configuração que esta atualmente em seguida texto

SHOW ALL

-- Exercise 01 - check the time zone of the data bases:
SHOW TIMEZONE

-- Exercise 02 - check the timestemp, date/ time GMT:
SELECT NOW ()

-- other information way but with string (more easy to read) esier to store 
SELECT TIMEOFDAY()

--Exercise 03 - Check the current time of the data base:
SELECT CURRENT_TIME

--Exercise 04 - Check the current DATE (year-month-day) of the data base:
SELECT CURRENT_DATE

-- Exercise 05 - Extract year of payment table give the name "year"

SELECT * FROM payment

SELECT EXTRACT (YEAR FROM payment_date) AS year FROM payment

-- Exercise 06 - Extract moth of payment table give the rename as "pay_month"

SELECT EXTRACT (MONTH FROM payment_date) AS pay_month FROM payment

--Exercise 07 - Extract day of payment table give the rename as "dau_month"

SELECT EXTRACT (DAY FROM payment_date) AS pay_day FROM payment

--Exercise 08 - Extract PRIMEIRO TRIMESTRE DO ANO (QUARTER) of payment table give the rename as "frist_quater"
-- widely used for business 

SELECT EXTRACT (QUARTER FROM payment_date) AS first_quater FROM payment

--Exercise 09 - Discover how old a timestamp was regard our currently dates
-- how old is the timestamp?

SELECT payment_date FROM payment

SELECT AGE(payment_date) FROM payment -- to see the age

--Exercise 10 -
-- to_char = generalizes to convert from a data type to a data type text INT THIS CASE CONVER IN 'MONTH-YYYY'
--get some/any data time and convert to text 

SELECT TO_CHAR (payment_date, 'MONTH-YYYY')FROM payment

--Exercise 11 - Convert to month space year => 'MONTH  YYYY'
-- is possible to find this in sql page ---> WEBPAGE: postgresql.org
SELECT TO_CHAR (payment_date, 'MONTH  YYYY')FROM payment

--Exercise 12 - Convert to month, day, year => 'MM/dd/yyyy' ---> WEBPAGE: postgresql.org
--TEMPLATE PATTERNS FOR DATE / TIME FORMATTING --> WEBPAGE: postgresql.org

SELECT TO_CHAR (payment_date, 'MM/dd/yyyy')FROM payment

--Exercise 13 - Convert to EUROPEAN STEMP 'dd-MM-YYYY'
SELECT TO_CHAR (payment_date, 'dd-MM-YYYY')FROM payment