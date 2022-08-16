Project 2: 

CREATE TABLE purchases (
product_id INT PRIMARY KEY,
title VARCHAR(255),
price INTEGER,
created_at TIMESTAMP,
deleted_at TIMESTAMP,
tags VARCHAR(255));

CREATE TABLE purchase_items(
	product_id INT PRIMARY KEY, 
	title VARCHAR(255),
	price INTEGER, 
	created_at TIMESTAMP WITH TIME ZONE, 
	delete_at TIMESTAMP WITH TIME ZONE,
	tags VARCHAR(255)); 
	
CREATE TABLE product_items(
	product_items INT NOT NULL, 
	product_id INT, 
	FOREIGN KEY(product_id) REFERENCES product(product_id)
    	price NUMERIC,
	quantity INT,
	status VARCHAR(255)
		
CREATE TABLE users (
	FOREIGN KEY (user_id) REFERENCES purchases(user_id),
	email VARCHAR(255) ,
	password VARCHAR(255) ",
	created_at TIMESTAMP WITH TIME ZONE,
	deleted_at TIMESTAMP WITH TIME ZONE);
	

--information to do with each person's address and where the purchases will be delivered. 
 
--I also tried to populate each part of the data set so that we can find information about the users respectively. 	

	
INSERT INTO PURCHASES VALUES (1, '2011-03-16 10:03:00','Harrison Jonson','"6425 43rd St."','FL','50382',7);
INSERT INTO PURCHASES VALUES (2, '2011-09-14 00:00:00','Cortney Fontanilla','"321 MLK Ave."','WA','43895',30);
INSERT INTO PURCHASES VALUES (3, '2011-09-11 00:54:00','Ruthie Vashon','"2307 45th St."','GA','98937',18);
INSERT INTO PURCHASES VALUES (4, '2011-02-27 14:53:00','Isabel Wynn','"7046 10th Ave."','NY','57243',11);
INSERT INTO PURCHASES VALUES (5, '2011-12-20 06:45:00','Shari Dutra','"4046 8th Ave."','FL','61539',34);
INSERT INTO PURCHASES VALUES (6, '2011-12-10 07:29:00','Kristofer Galvez','"2545 8th Ave."','WA','83868',39);
INSERT INTO PURCHASES VALUES (7, '2011-06-18 22:42:00','Maudie Medlen','"2049 44th Ave."','FL','52107',8);
INSERT INTO PURCHASES VALUES (8, '2011-05-27 20:19:00','Isabel Crissman','"1992 50th Ave."','VA','91062',50);


SELECT * 
FROM purchases as p
JOIN purchase_items as pi
ON p.purchase_id=pi.purchase_id

SELECT * 
FROM product_items 
WHERE price < 10 ORDER by price ;

SELECT * 
FROM purchase_items;

SELECT DISTINCT price 
FROM product_items;

SELECT MIN(price) 
FROM product_items;


--references: 
--collaborated with isaiah to understand what needs to be done and also watched a few youtube videos, which I have attached here as well 
--https://www.youtube.com/watch?v=uoJjDbL-Y_E
--https://www.youtube.com/watch?v=tu7zuv6aMug

