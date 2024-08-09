-- Creating the CUSTOMER table
CREATE TABLE CUSTOMER (
    CustID NUMBER PRIMARY KEY,
    CustName VARCHAR2(100) NOT NULL,
    CustAddress VARCHAR2(200)
);

-- Creating the PRODUCT table
CREATE TABLE PRODUCT (
    ProductID NUMBER PRIMARY KEY,
    ProdName VARCHAR2(100) NOT NULL,
    Price NUMBER
);

-- Creating the ORDERS table
CREATE TABLE ORDERS (
    OrderID NUMBER PRIMARY KEY,
    CustID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER NOT NULL,
    CONSTRAINT fk_CustID FOREIGN KEY (CustID) REFERENCES CUSTOMER(CustID),
    CONSTRAINT fk_ProductID FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
);

--Adding column category to the PRODUCT table
ALTER TABLE PRODUCT ADD Category VARCHAR2(20);

--Adding a Column OrderDate to the ORDERS Table with a Default Value
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;
