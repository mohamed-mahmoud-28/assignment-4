-- Assignment 4 - Part 2
-- SQL Queries

-- 1. Get all order numbers without repetition that contain any product
-- starting with code S18 and price more than 100
SELECT DISTINCT orderNumber
FROM orderdetails
WHERE productCode LIKE 'S18%'
AND priceEach > 100;


-- 2. Get all payments made on day 5 or 6
SELECT *
FROM payments
WHERE DAY(paymentDate) IN (5, 6);


-- 3. Get the fifth-highest credit limit of customers who live in the USA
-- and whose phone number contains 5555
SELECT *
FROM customers
WHERE country = 'USA'
AND phone LIKE '%5555%'
ORDER BY creditLimit DESC
LIMIT 1 OFFSET 4;


-- 4. Get first name, last name, office number, and office city for each employee
SELECT e.firstName, e.lastName, o.officeCode, o.city
FROM employees e
JOIN offices o
ON e.officeCode = o.officeCode;


-- 5. Get employees who work in office ID 4 or 6
SELECT e.firstName, e.lastName, o.officeCode, o.city
FROM employees e
JOIN offices o
ON e.officeCode = o.officeCode
WHERE o.officeCode IN (4, 6);
