CREATE TABLE customer(
id INTEGER PRIMARY KEY AUTOINCREMENT,
f_name VARCHAR(50) NOT NULL,
l_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE
);

CREATE TABLE status(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(50)
);

CREATE TABLE order_(
id INTEGER PRIMARY KEY AUTOINCREMENT,
customer_id integer(50),
date_ VARCHAR(50),
status_id integer(50),
FOREIGN KEY(customer_id) REFERENCES customer(id),
FOREIGN KEY(status_id) REFERENCES status(id)
);

CREATE TABLE product_order(
id INTEGER PRIMARY KEY AUTOINCREMENT,
order_id integer(50),
product_id integer(50),
quantity integer(50),
FOREIGN KEY(order_id) REFERENCES order_(id),
FOREIGN KEY(product_id) REFERENCES product(id)
);

CREATE TABLE product(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(50),
price FLOAT(50)
);

INSERT into customer(
f_name, l_name, email) VALUES ('Jonas', 'Jonaitis', 'jonas@email.lt')
INSERT into customer(
f_name, l_name, email) VALUES ('Ona', 'Onaite', 'ona@email.lt')
INSERT INTO customer(
f_name, l_name, email) VALUES ('Petra', 'Petraitis', 'petras@email.lt')

INSERT INTO order_(customer_id, date_, status_id) VALUES(1, '2023-05-09', 1);
INSERT INTO order_(customer_id, date_, status_id) VALUES(2, '2023-05-10', 2);
INSERT INTO order_(customer_id, date_, status_id) VALUES(3, '2023-05-10', 3);
INSERT INTO order_(customer_id, date_, status_id) VALUES(1, '2023-04-20', 4);
INSERT INTO order_(customer_id, date_, status_id) VALUES(3, '2023-03-15', 2);
INSERT INTO order_(customer_id, date_, status_id) VALUES(2, '2023-05-04', 3);

INSERT INTO product(name, price) VALUES('Agurkas', 2.95);
INSERT INTO product(name, price) VALUES('Pienas', 1.95);
INSERT INTO product(name, price) VALUES('Duona', 2.11);
INSERT INTO product(name,price) VALUES('Daktariska', 4.99);
 
Insert INTO status(name) VALUES('Priimtas');
INSERT INTO status(name) VALUES('Vykdomas');
INSERT INTO status(name) VALUES('Atmesta');
INSERT INTO status(name) VALUES('Uzbaigta');

;INSERT INTO product_order(order_id, product_id, quantity) VALUES(1, 1, 5);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(1, 4, 2);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(2, 2, 1);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(2, 3, 7);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(3, 2, 6);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(3, 1, 4);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(4, 4, 1);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(5, 1, 7);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(5, 3, 4);
INSERT INTO product_order(order_id, product_id, quantity) VALUES(6, 2, 10)


--kad rezultate matytųsi užsakymo id, pozicijos su kiekiais,
--kainomis ir bendra pozicijos suma:
SELECT product_order.order_id, product.name, product.price, product_order.quantity * product.price AS Total 
FROM product_order
JOIN product ON product_order.product_id = product.id

--kad rezultate matytųsi užsakymo id,
-- užsakovo pavardė, data, bendra užsakymo suma:

SELECT product_order.order_id, customer.l_name, order_.date_,
 sum(product_order.quantity * product.price)
 FROM product_order
 JOIN customer ON customer.id = order_.customer_id
 JOIN order_ ON order_.date_ = date_
 JOIN product ON

 SELECT 	order_.id as "order id", 
		order_.date_ as "date", 
		customer.l_name as "customer",
        sum(product_order.quantity * product.price) as "price"
FROM product_order
JOIN order_ on order_.id = product_order.order_id 
JOIN product on product.id = product_order.product_id
JOIN customer on customer.id = order_.customer_id
GROUP by order_id