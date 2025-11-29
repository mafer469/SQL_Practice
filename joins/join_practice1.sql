-- join_practice1.sql
-- Purpose: Practice INNER/LEFT/RIGHT/FULL joins with straightforward tables.

-- 1. Basic INNER JOIN
SELECT Customers.customer_id, Orders.item
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id

-- 2. LEFT JOIN
SELECT Customers.customer_id, Customers.first_name, Orders.item
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

-- 3. RIGHT JOIN

-- 4. FULL OUTER JOIN

-- 6. JOIN with WHERE filters

-- 7. JOIN with ORDER BY

-- 8. JOIN with GROUP BY (aggregations)

-- 9. Chained JOINs (3-table joins)

