------------------------------------------------------------
-- 04_create_schema_tables.sql
-- Group B - ESDS Database Schema
------------------------------------------------------------

-- Switch to your PDB
ALTER SESSION SET CONTAINER = ESDS_PDB;

------------------------------------------------------------
-- 1. SUPPLIERS TABLE
------------------------------------------------------------
CREATE TABLE Suppliers (
    SupplierID       NUMBER(10)     PRIMARY KEY,
    Name             VARCHAR2(100)  NOT NULL,
    ContactInfo      VARCHAR2(150)
);

------------------------------------------------------------
-- 2. PRODUCTS TABLE
------------------------------------------------------------
CREATE TABLE Products (
    ProductID         NUMBER(10)     PRIMARY KEY,
    SupplierID        NUMBER(10)     NOT NULL,
    Name              VARCHAR2(100)  NOT NULL,
    Category          VARCHAR2(50)   NOT NULL,
    ManufactureDate   DATE           NOT NULL,
    ExpiryDate        DATE           NOT NULL,
    StorageCondition  VARCHAR2(100),

    CONSTRAINT fk_product_supplier
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);

------------------------------------------------------------
-- 3. INVENTORY TABLE
------------------------------------------------------------
CREATE TABLE Inventory (
    InventoryID   NUMBER(10)     PRIMARY KEY,
    ProductID     NUMBER(10)     NOT NULL,
    Quantity      NUMBER(10)     NOT NULL,
    ReceivedDate  DATE           NOT NULL,
    Location      VARCHAR2(50),

    CONSTRAINT fk_inventory_product
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

------------------------------------------------------------
-- 4. SPOILAGE ALERTS TABLE
------------------------------------------------------------
CREATE TABLE SpoilageAlerts (
    AlertID     NUMBER(10)     PRIMARY KEY,
    ProductID   NUMBER(10)     NOT NULL,
    AlertDate   DATE           NOT NULL,
    Message     VARCHAR2(255)  NOT NULL,
    Status      VARCHAR2(20)   DEFAULT 'PENDING',

    CONSTRAINT fk_alert_product
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

------------------------------------------------------------
-- 5. SALES TABLE
------------------------------------------------------------
CREATE TABLE Sales (
    SaleID     NUMBER(10)     PRIMARY KEY,
    ProductID  NUMBER(10)     NOT NULL,
    Quantity   NUMBER(10)     NOT NULL,
    SaleDate   DATE           NOT NULL,

    CONSTRAINT fk_sales_product
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

------------------------------------------------------------
-- 6. STORAGE CONDITIONS TABLE
------------------------------------------------------------
CREATE TABLE StorageConditions (
    ConditionID    NUMBER(10)     PRIMARY KEY,
    ProductID      NUMBER(10)     NOT NULL,
    Temperature    NUMBER(5,2),
    Humidity       NUMBER(5,2),
    DateRecorded   DATE           NOT NULL,

    CONSTRAINT fk_condition_product
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

------------------------------------------------------------
-- END OF SCHEMA TABLES
------------------------------------------------------------

