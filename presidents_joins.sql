SELECT *
FROM customer;

SELECT *	
FROM order_;

-- Inner Join: First name and last name of all of the people who made payments
SELECT first_name, last_name, order_date, amount
FROM customer
INNER JOIN order_
ON customer.customer_id = order_.customer_id;

-- Left Join: Show all info from customer table and from order_ table
-- BUT, any info that is in order_ table but NOT in customer table is NOT shown
-- i.e., you'll see [null] in the order_ table entries because the info is in customer but not in order_
SELECT first_name, last_name, order_date, amount
FROM customer
LEFT JOIN order_
ON customer.customer_id = order_.customer_id
-- only show information that is [null], ex. customer names with no order history
WHERE order_date IS NULL;

-- Right Join: Show all info from customer table and from order_ table
-- BUT, any info that is in customer table but NOT in order_ table is NOT shown
-- i.e., you'll see [null] in the customer table entries because the info is in order_ but not in customer
SELECT first_name, last_name, order_date, amount
FROM customer
RIGHT JOIN order_
ON customer.customer_id = order_.customer_id

-- Full Join: Show all info from both tables!
SELECT first_name, last_name, order_date, amount
FROM customer
FULL JOIN order_
ON customer.customer_id = order_.customer_id;