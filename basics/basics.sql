-- basics.sql
-- Prupose: Practice basic SELECT, filtering, sorting, aggregate function,s and GROUP BY in SQL

-- 1. Select all columns from the table 
SELECT *
FROM Customers;

-- 2. Select specific columns
SELECT customer_id, ages
FROM Customers

-- 3. Filtering with multiple conditions
SELECT customer_id, first_name, last_name, age, country
FROM customers
WHERE age>30 AND country = 'USA'

-- 4. Sorting results
SELECT customer_id, first_name, last_name, age, country
FROM customers
ORDER BY age DESC

-- 5. Total number of orders
SELECT COUNT(*) AS total_orders
FROM Orders

-- 6. Total revenue
SELECT SUM(amount) as total_revenue
FROM Orders

-- 7. Average order value
SELECT AVG(amount) as average_revenue
FROM Orders

-- 8. Revenue by order
SELECT customer_id,
	SUM(amount) AS customer_revenue
FROM Orders
GROUP BY customer_id
ORDER BY order_revenue DESC

-- 9. Customers with revenue above 300$
SELECT customer_id,
	SUM(amount) AS total_spent
FROM Orders
GROUP BY customer_id
HAVING SUM(amount) > 300
ORDER BY total_spent DESC

