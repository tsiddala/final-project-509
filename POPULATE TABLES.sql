Creating a database:
For creating a database I used folllowing commands in mysql
CREATE DATABASE clothing_business;

SHOW DATABASES; -- TO check if the database was created

now as the database is created i want to use this database to create tables.

For creating tables


CREATE TABLE Customer(
custID int NOT NULL,
custFirstName varchar(50) NOT NULL,
custLastName varchar(50) NOT NULL,
custPhone int NOT NULL
);


CREATE TABLE store(
storeID int NOT NULL,
storeName varchar(50) NOT NULL,
storeItems varchar(50) NOT NULL,
storePincode int NOT NULL
);

CREATE TABLE supplychain(
deliveryID int NOT NULL,
warehouseId int NOT NULL,
warehousePincode int NOT NULL
);

CREATE TABLE shopping_order(
shpord_ID int NOT NULL,
Shpord_date DATE NOT NULL,
ShpOrd_Pincode int NOT NULL
);

By above commands all the tables are created.
for integers datatype int has been used
varchar is used for all names, word
date datatype is used to mention date.

DESCRIBE is used to check the tables

DESCRIBE store;

To fill the above tables following commands are used

INSERT INTO customer
(custID , custFirstName , custLastName , custphone )
VALUES 
(123, "JOHN", "AB", 999999 ),
(456, "TONY", "XY", 777777 ),
(789, "SHEIK", "MD", 333333),
(112, "RAMU", "CH", 1111111);


INSERT INTO supplychain(deliveryID , warehouseId , warehousePincode)
VALUES 
(111, "2324", 506001 ),
(222, "3435", 506002 ),
(333, "4445",506003 ),
(444, "5455", 506004 );

INSERT INTO product(productID , productname , productprice)
VALUES 
(500, "jeans", 20.00 ),
(600, "shirt", 30.00),
(700, "tshirt", 40.00),
(800, "jacket", 90.00 );

INSERT INTO shopping_order(shpord_ID , shpord_date , shpord_pincode)
VALUES 
(9001, "2021-12-01", 506001 ),
(8001, "2021-11-21", 506002),
(7001, "2021-10-18", 506003),
(6001, "2021-10-30", 506004);

INSERT INTO store(storeID , storeName, storeItems, storepincode)
VALUES 
(345, "zara", "jeans", 506001),
(567, "trends", "shirt", 506002),
(789, "AE", "tshirt", 506003),
(321, "armani", "jacket", 506004);

After populating the tables we can check the tables using folllowing commands
SELECT * FROM store;
SELECT * FROM product;
SELECT * FROM customer;
SELECT * FROM shopping_order;
SELECT * FROM supplychain;


 





