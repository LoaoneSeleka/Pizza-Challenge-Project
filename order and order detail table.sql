--Delete the table pizza type if it exists in the database
DROP TABLE IF EXISTS orders;

--CREATE orders table with relevant information
CREATE TABLE orders
(order_id serial PRIMARY KEY,
 order_date DATE NOT NULL,
 order_time TIME
);

--View order data records
SELECT *
FROM orders;

--Delete order details table if it exists
DROP TABLE IF EXISTS order_details;

--Create order details table with revelant information
CREATE TABLE order_details(
order_details_id SERIAL PRIMARY KEY,
order_id INT NOT NULL,
pizza_id VARCHAR(250) NOT NULL,
quantity INT NOT NULL,
FOREIGN KEY(order_id)
	REFERENCES orders(order_id),
FOREIGN KEY(pizza_id)
	REFERENCES pizza(pizza_id)
);

--View records in the order details table
SELECT *
FROM order_details;