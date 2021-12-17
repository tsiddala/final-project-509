-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-15 16:27:39.677

-- tables-----------------------CREATING CUSTOMER TABLE
-- Table: Customer
CREATE TABLE Customer (
    CustID int NOT NULL,
    custFirstName varchar(50) NOT NULL,
    custLastName varchar(50) NOT NULL,
    custPhone int NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (CustID)
);

-- Table: Shopping_Order-------------------CREATING ORDER TABLE
CREATE TABLE Shopping_Order (
    shpOrd_ID int NOT NULL,
    shpord_date date NOT NULL,
    shpord_Pincode int NOT NULL,
    Customer_CustID int NOT NULL,
    product_productID int NOT NULL,
    store_storeId int NOT NULL,
    CONSTRAINT Shopping_Order_pk PRIMARY KEY (shpOrd_ID)
);

-- Table: Supplychain------------------------CREATING SUPPLYCHAIN TABLE
CREATE TABLE Supplychain (
    deliveryID int NOT NULL,
    warehouseId int NOT NULL,
    warehousePincode int NOT NULL,
    Shopping_Order_shpOrd_ID int NOT NULL,
    CONSTRAINT Supplychain_pk PRIMARY KEY (deliveryID)
);

-- Table: product-----------------------CREATING PRODUCTS TABLE
CREATE TABLE product (
    productID int NOT NULL,
    productName varchar(50) NOT NULL,
    productPrice int NOT NULL,
    store_storeId int NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (productID)
);

-- Table: store-----------------------CREATING STORE TABLE
CREATE TABLE store (
    storeId int NOT NULL,
    storeName varchar(50) NOT NULL,
    storePincode int NOT NULL,
    product_productID int NOT NULL,
    CONSTRAINT store_pk PRIMARY KEY (storeId)
);

-- foreign keys
-- Reference: Shopping_Order_Customer (table: Shopping_Order)
ALTER TABLE Shopping_Order ADD CONSTRAINT Shopping_Order_Customer FOREIGN KEY Shopping_Order_Customer (Customer_CustID)
    REFERENCES Customer (CustID);

-- Reference: Shopping_Order_product (table: Shopping_Order)
ALTER TABLE Shopping_Order ADD CONSTRAINT Shopping_Order_product FOREIGN KEY Shopping_Order_product (product_productID)
    REFERENCES product (productID);

-- Reference: Shopping_Order_store (table: Shopping_Order)
ALTER TABLE Shopping_Order ADD CONSTRAINT Shopping_Order_store FOREIGN KEY Shopping_Order_store (store_storeId)
    REFERENCES store (storeId);

-- Reference: Supplychain_Shopping_Order (table: Supplychain)
ALTER TABLE Supplychain ADD CONSTRAINT Supplychain_Shopping_Order FOREIGN KEY Supplychain_Shopping_Order (Shopping_Order_shpOrd_ID)
    REFERENCES Shopping_Order (shpOrd_ID);

-- Reference: product_store (table: product)
ALTER TABLE product ADD CONSTRAINT product_store FOREIGN KEY product_store (store_storeId)
    REFERENCES store (storeId);

-- Reference: store_product (table: store)
ALTER TABLE store ADD CONSTRAINT store_product FOREIGN KEY store_product (product_productID)
    REFERENCES product (productID);

-- End of file.

