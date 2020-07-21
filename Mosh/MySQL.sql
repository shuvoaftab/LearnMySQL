#1
USE sql_store;

SELECT *
FROM customers
ORDER BY first_name

#2
USE sql_store;

SELECT *
FROM customers
-- WHERE customer_id = 1
ORDER BY first_name

#3
USE sql_store;

SELECT first_name, last_name, points
FROM customers


#4
USE sql_store;

SELECT first_name, last_name, points, points +10
FROM customers

#5 /* Operators should be in order /* +- */
USE sql_store;

SELECT first_name, last_name, points, points * 10 + 10
FROM customers

#6 /*Operators should be in order /* +-  */
USE sql_store;

SELECT 
	first_name, 
	last_name, 
	points, 
	points * 10 + 10
FROM customers


#7 /* Operators should be in order /* +-	*/
USE sql_store;

SELECT 
	first_name, 
	last_name, 
	points, 
	(points + 10) * 10
FROM customers

#8 
USE sql_store;

SELECT 
	first_name, 
	last_name, 
	points, 
	(points + 10) * 10 AS discount_factor
FROM customers

#9 
USE sql_store;

SELECT 
	first_name, 
	last_name, 
	points, 
	(points + 10) * 10 AS 'discount factor'
FROM customers

#10
USE sql_store;

SELECT DISTINCT state
FROM customers

#11
USE sql_store;

SELECT name, unit_price, unit_price * 1.1 AS new_price
FROM products

#12
USE sql_store;

SELECT *
FROM customers
WHERE points>3000

#13
USE sql_store;

SELECT *
FROM customers
WHERE state = 'VA'
/*	WHERE state = 'va'	*/

#14
USE sql_store;

SELECT *
FROM customers
WHERE state != 'VA'
/*	WHERE state <> 'VA'	*/

#15
USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01'

#16
USE sql_store;

SELECT *
FROM orders
WHERE order_date >= '2018-01-01'

#17
USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000

#18
USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000

#19 /*	AND > OR > NOT*/
USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000 AND state = 'VA'

#20
USE sql_store;

SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
(points > 1000 AND state = 'VA')

#21
USE sql_store;

SELECT *
FROM order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30

#22
USE sql_store;

SELECT *
FROM customers
WHERE state = 'VA' OR state = 'GA' OR state = 'FL'

#23
USE sql_store;

SELECT *
FROM customers
WHERE state IN ('VA','GA', 'FL')

#24
USE sql_store;

SELECT *
FROM customers
WHERE state NOT IN ('VA','GA', 'FL')

#25
USE sql_store;

SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72)

#26
USE sql_store;

SELECT *
FROM customers
WHERE points >= 1000 AND points <= 3000

#27
USE sql_store;

SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000

#28
USE sql_store;

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'

#29
USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE 'b%'

#30
USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE '%b%'


#30
USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE '%y'

#31
USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE '_____y'

#32
USE sql_store;

SELECT *
FROM customers
WHERE last_name LIKE 'b____y'

#33
USE sql_store;

SELECT *
FROM customers
WHERE 	address LIKE '%TRAIL%' OR 
		address LIKE '%AVENUE%'

#34
USE sql_store;

SELECT *
FROM customers
WHERE phone LIKE '%9'

#35
USE sql_store;

SELECT *
FROM customers
WHERE phone NOT LIKE '%9'


#36 /*	^ Start of the string*/
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP '^field'

#37 /*	 $ End of the string*/
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'field$'


#38 
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'


#39 
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|rose'


#40 
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP '^field|mac|rose'

#41 /*	ge ie me	*/
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e'


#42 /*	eg ei em	*/
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'e[gim]'

#43
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP '[a-z]e'

#44
USE sql_store;

SELECT *
FROM customers
WHERE 	first_name  IN ('ELKA', 'AMBUR')
--WHERE 	first_name  REGEXP 'elka|ambur'

#45
USE sql_store;

SELECT *
FROM customers
WHERE last_name  REGEXP 'EY$|ON$'

#46
USE sql_store;

SELECT *
FROM customers
WHERE last_name  REGEXP '^MY|SE'

#47
USE sql_store;

SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu'


#48
USE sql_store;

SELECT *
FROM customers
WHERE phone IS NULL

#49
USE sql_store;

SELECT *
FROM customers
WHERE phone IS NOT NULL

#50
USE sql_store;

SELECT *
FROM orders
WHERE shipped_date IS NULL

#51
USE sql_store;

SELECT *
FROM customers
ORDER BY first_name DESC

#
USE sql_store;

SELECT *
FROM customers
ORDER BY state, first_name 

#
USE sql_store;

SELECT *
FROM customers
ORDER BY state DESC, first_name DESC

#
USE sql_store;

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY points, first_name

#
USE sql_store;

SELECT *
FROM order_items
WHERE order_id = 2
ORDER BY (quantity * unit_price) DESC

#
USE sql_store;

SELECT *, (quantity * unit_price) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY (quantity * unit_price) DESC

#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#


#





















































































