--Delete the table pizza type if it exists in the database
DROP TABLE IF EXISTS pizza;

-- Create pizza table with relevant attributes
CREATE TABLE pizza(
pizza_id VARCHAR(100)PRIMARY KEY,
pizza_type_id VARCHAR(250) NOT NULL,
pizza_size VARCHAR(10) NOT NULL,
pizza_price NUMERIC NOT NULL,
FOREIGN KEY(pizza_type_id)
	REFERENCES pizza_type(pizza_type_id)
);

--Insert data into the pizza table. The rest of the data i have imported using the import function from PostgreSQL
INSERT INTO pizza VALUES(
'bbq_ckn_s','bbq_ckn','S',12.75);

--View that data in the pizza table
SELECT *
FROM pizza;