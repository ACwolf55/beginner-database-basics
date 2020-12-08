#1
 CREATE TABLE person (
   id SERIAL PRIMARY KEY,
   name VARCHAR(25),
   age INTEGER,
   height INTEGER,
	 city VARCHAR(20),
   favorite_color VARCHAR (15)
   )
#2
INSERT INTO person
(name,age,height,city,favorite_color)
VALUES
('Luke',26,160,'NYC','Green'),
('Rick',32,170,'Cairo','Brown'),
('Daniel',20,160,'LA','Red'),
('Wilt',34,250,'Phily','Red'),
('Ash',10,145,'Pallet Town','Red');
#3
SELECT * FROM person ORDER BY height DESC;
#4
SELECT * FROM person ORDER BY height ASC;
#5
SELECT * FROM person ORDER BY age DESC;
#6
SELECT * FROM person WHERE age > 20;
#7
SELECT * FROM person where age =18;
#8
SELECT * FROM person WHERE age < 20 OR age > 30;
#9
SELECT * FROM person WHERE age != 27;
#10
SELECT * FROM person WHERE favorite_color != 'Red';
#11
SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';
#12
SELECT * FROM person WHERE favorite_color ='Orange' OR favorite_color = 'Green';
#13
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green','Blue' );
#14
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

  ORDERS
#1
CREATE TABLE orders (
   product_id SERIAL PRIMARY KEY,
   person_id INTEGER,
   product_name VARCHAR(25),
   product_price FLOAT,
   quantity INTEGER
  )
#2
 INSERT INTO orders
(person_id,product_name,product_price,quantity)
VALUES
(5, 'Toaster',25,1),(5,'Bagel',1,15),(1,'PS5',500,1),(1,'Pop',1,5),(3,'Burger',2,2);
#3
SELECT * FROM orders;
#4
SELECT SUM(quantity) FROM orders;
#5
SELECT SUM(product_price *quantity) FROM orders;
#6
SELECT SUM(product_price*quantity) FROM orders WHERE person_id = 5;
  
Artists
#1
INSERT INTO artist
(name)
VALUES
('Led Zeppelin'),('Britney Spears'),('Brian McKnight');
#2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
#3
SELECT *FROM artist ORDER BY name ASC limit 5;
#4
SELECT * FROM artist WHERE name LIKE 'Black%';
#5
SELECT * FROM artist WHERE name LIKE '%Black%';

Employees
#1
SELECT first_name,last_name FROM employee WHERE city = 'Calgary';
#2
SELECT MAX(birth_date) FROM employee ;
#3
SELECT MIN(birth_date) FROM employee ;
#4
SELECT employee_id FROM employee WHERE first_name='Nancy' AND last_name='Edwards';
#5
SELECT * FROM employee WHERE reports_to = 2;
#6
SELECT COUNT(*) FROM employee WHERE city ='Lethberg';

Invoice
#1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
#2 
SELECT MAX(total) FROM invoice; 
#3
SELECT MIN(total) FROM invoice;
#4
SELECT * FROM invoice WHERE total> 5;
#5
SELECT COUNT(*) FROM invoice WHERE total < 5;
#6
SELECT * FROM invoice WHERE billing_state IN ('CA','TX','AZ');
#7
SELECT AVG(total) FROM invoice;
#8
SELECT SUM(total) FROM invoice;