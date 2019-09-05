1.
CREATE TABLE person (
    id SERIAL PRIMARY KEY
    name VARCHAR(100)
    age INTEGER
    height INTEGER
    city VARCHAR(100)
    favorite_color VARCHAR(100)
)

2.INSERT INTO person ( name, age, height, city, favorite_color ) 
 VALUES ( 'Maegan Skinner', 25, 152, 'Dallas', 'Black' ),
 ('Raegan Skinner', 24, 158, 'Dallas', 'Red'),
 ('Anthony Skinner', 12, 162, 'Dallas', 'Green'),
 ('Marco Macias', 32, 168, 'Hart', 'Blue'),
 ('Cobi Macias', 2, 80, 'Dallas', 'Pink');

3. SELECT * FROM person ORDER BY height DESC;

4. SELECT * FROM person ORDER BY height ASC;

5. SELECT * FROM person ORDER BY age DESC;

6. SELECT * FROM person ORDER BY age > 20;

7.SELECT * FROM person ORDER BY age = 18;

8. SELECT * FROM person ORDER BY age < 20 OR > 30 ASC;

9.SELECT * FROM person ORDER BY age != 27;

10.SELECT * FROM person ORDER BY favorite_color != 'red';

11. SELECT * FROM person ORDER BY favorite_color != 'red' AND favorite_color 'blue';

12. SELECT * FROM person ORDER BY favorite_color = 'orange' OR favorite_color 'green';

13.SELECT * FROM person ORDER BY favorite_color =  IN ('orange','blue','green');

14.SELECT * FROM person ORDER BY favorite_color = IN  ('yellow'  ,'purple');

/// SECTION 2 \\\

1.CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY
    person_id   INTEGER
    product_name VARCHAR(100)
    product_price INTEGER
    quantity INTEGER
)

2. INSERT INTO orders ('order_id', 'person_id', 'product_name', 'product_price', 'quantity'. ) 
 VALUES ( '101', 'Person608', 'Laptop', 450, 1  ),
 ('102', 'Person371', 'headphones', 200, 2);

3. SELECT * FROM orders;

4. SELECT SUM(quantity) FROM orders;

5. SELECT SUM(product_price) FROM orders;

6. SELECT SUM(Product_price * quantity) FROM orders WHERE person_id= 102;


/// SECTION 3 \\\

1. INSERT INTO artist ( name ) VALUES ( 'artist name' );

2. SELECT * FROM artist ORDER BY name DESC LIMIT 10;

3. SELECT * FROM artist ORDER BY name ASC LIMIT 5;

4. SELECT * FROM artist WHERE name LIKE 'Black%';

5. SELECT * FROM artist WHERE name LIKE '%Black%';


/// SECTION 4 \\\

1. SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

2. SELECT MAX(birth_date) from employee;

3. SELECT MIN(birth_date) from employee;

4. SELECT * FROM employee WHERE reports_to = 2;

5. SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


/// SECTION 5 \\\

1. SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

2. SELECT MAX(total) FROM invoice;

3. SELECT MIN(total) FROM invoice;

4. SELECT * FROM invoice WHERE total > 5;

5. SELECT COUNT(*) FROM invoice WHERE total < 5;

6.SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

7. SELECT AVG(total) FROM invoice;

8. SELECT SUM(total) FROM invoice;

