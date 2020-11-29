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
USE sql_store;

SELECT *
FROM customers
LIMIT 3

# /*	Pagination */
USE sql_store;

SELECT *
FROM customers
LIMIT 6, 3

#
USE sql_store;

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3

#
USE sql_store;

SELECT *
FROM orders
INNER JOIN customers 
		ON orders.customer_id = customers.customer_id

#
USE sql_store;

SELECT order_id, first_name, last_name
FROM orders
INNER JOIN customers 
		ON orders.customer_id = customers.customer_id

#
USE sql_store;

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
INNER JOIN customers 
		ON orders.customer_id = customers.customer_id

#
USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
INNER JOIN customers C
		ON o.customer_id = C.customer_id


#
USE sql_store;

SELECT order_id, o.product_id, p.name, quantity, o.unit_price
FROM order_items o
JOIN products p
		ON o.product_id = p.product_id

#	/* Multiple DB	*/
USE sql_store;

SELECT *
FROM order_items o
JOIN sql_inventory.products p
		ON o.product_id = p.product_id


#
USE sql_inventory;

SELECT *
FROM sql_store.order_items o
JOIN products p
		ON o.product_id = p.product_id


#
USE sql_hr;

SELECT *
FROM employees e
JOIN employees m
		ON e.reports_to = m.employee_id


#
USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employees m
		ON e.reports_to = m.employee_id


#
USE sql_store;

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id


#
USE sql_store;

SELECT 	o.order_id,
		o.order_date,
        c.first_name,
        c.last_name,
        os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id


#
USE sql_invoicing;

SELECT 	p.date,
		p.invoice_id,
        p.amount,
        c.name,
        pm.name
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id


#
USE sql_store;

SELECT 	*
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
	AND oi.product_id = oin.product_id

#
USE sql_store;

SELECT 	*
FROM orders o, customers c
WHERE o.customer_id = c.customer_id

# /* OUTER is optional */
USE sql_store;

SELECT 	
		c.customer_id,
        c.first_name,
        o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id

#
USE sql_store;

SELECT 	
		c.customer_id,
        c.first_name,
        o.order_id
FROM orders o
RIGHT JOIN customers c
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id

#
USE sql_store;

SELECT 	
		p.product_id,
        p.name,
        oi.quantity
FROM  products p
JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id

#
USE sql_store;

SELECT 	
		p.product_id,
        p.name,
        oi.quantity
FROM  products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id
ORDER BY p.product_id

#
USE sql_store;

SELECT 	
		c.customer_id,
        c.first_name,
        o.order_id,
		sh.name AS shipper
FROM  customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id

#
USE sql_store;

SELECT 	
		o.order_date,
        o.order_id,
        c.first_name,
        sh.name AS shipper,
        st.name AS status
FROM  orders o
LEFT JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses st
	ON o.status = st.order_status_id
ORDER BY o.order_id

#
USE sql_hr;

SELECT 	
		e.employee_id,
        e.first_name,
        m.first_name AS manager
FROM  employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id

#
USE sql_store;

SELECT 	
        o.order_id,
        c.first_name,
        sh.name AS shipper
FROM  orders o
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
	USING (shipper_id)

#
USE sql_store;

SELECT 	*
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id)

#
USE sql_invoicing;

SELECT 	p.date,
		c.name AS client,
        p.amount,
        pm.name
FROM payments p
JOIN clients c USING (client_id)
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id

#
USE sql_store;

SELECT	o.order_id,
		c.first_name
FROM orders o
NATURAL JOIN customers c

#
USE sql_store;

SELECT	c.first_name,
		p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.first_name

#
USE sql_store;

SELECT	*
FROM shippers s
CROSS JOIN products p
ORDER BY s.name

#
USE sql_store;

SELECT	*
FROM shippers s, products p
ORDER BY s.name

#
USE sql_store;

SELECT	order_id,
		order_date,
		'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'

#
USE sql_store;

SELECT	order_id,
		order_date,
		'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'

#
USE sql_store;

SELECT	order_id,
		order_date,
		'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'

UNION

SELECT	order_id,
		order_date,
		'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'

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





















































































