## DATA DICTIONARY – Early Spoilage Detection System (ESDS)

**1. PRODUCTS TABLE**

| Column           | Data Type     | Constraints  | Description                                           |
| ---------------- | ------------- | ------------ | ----------------------------------------------------- |
| ProductID        | NUMBER(10)    | PK, NOT NULL | Unique identifier for each product                    |
| SupplierID       | NUMBER(10)    | FK, NOT NULL | Product Related to supplier                           |
| Name             | VARCHAR2(100) | NOT NULL     | Product name                                          |
| Category         | VARCHAR2(50)  | NOT NULL     | Type/category of the product                          |
| ManufactureDate  | DATE          | NOT NULL     | Production date                                       |
| ExpiryDate       | DATE          | NOT NULL     | The date the product will expire                      |
| StorageCondition | VARCHAR2(100) | NULL         | Required storage conditions (e.g., Cool, Dry, Frozen) |

**2. INVENTORY TABLE**

| Column       | Data Type    | Constraints                        | Description               |
| ------------ | ------------ | ---------------------------------- | ------------------------- |
| InventoryID  | NUMBER(10)   | PK, NOT NULL                       | Unique inventory record   |
| ProductID    | NUMBER(10)   | FK → Products(ProductID), NOT NULL | Product being stored      |
| Quantity     | NUMBER(10)   | NOT NULL                           | Items available in stock  |
| ReceivedDate | DATE         | NOT NULL                           | Date received             |
| Location     | VARCHAR2(50) | NULL                               | Physical storage location |

**3. SPOILAGEALERTS TABLE**

| Column    | Data Type     | Constraints                        | Description               |
| --------- | ------------- | ---------------------------------- | ------------------------- |
| AlertID   | NUMBER(10)    | PK, NOT NULL                       | Alert identifier          |
| ProductID | NUMBER(10)    | FK → Products(ProductID), NOT NULL | Product related to alert  |
| AlertDate | DATE          | NOT NULL                           | When alert was triggered  |
| Message   | VARCHAR2(255) | NOT NULL                           | Spoilage risk description |
| Status    | VARCHAR2(20)  | DEFAULT 'PENDING'                  | PENDING or RESOLVED       |

**4. SALES TABLE**

| Column    | Data Type  | Constraints                        | Description         |
| --------- | ---------- | ---------------------------------- | ------------------- |
| SaleID    | NUMBER(10) | PK, NOT NULL                       | Sale transaction ID |
| ProductID | NUMBER(10) | FK → Products(ProductID), NOT NULL | Product sold        |
| Quantity  | NUMBER(10) | NOT NULL                           | Units sold          |
| SaleDate  | DATE       | NOT NULL                           | Transaction date    |

**5. SUPPLIERS TABLE**

| Column      | Data Type     | Constraints  | Description         |
| ----------- | ------------- | ------------ | ------------------- |
| SupplierID  | NUMBER(10)    | PK, NOT NULL | Supplier identifier |
| Name        | VARCHAR2(100) | NOT NULL     | Supplier name       |
| ContactInfo | VARCHAR2(150) | NULL         | Phone/email/address |

**6. STORAGECONDITIONS TABLE**

| Column       | Data Type   | Constraints                        | Description            |
| ------------ | ----------- | ---------------------------------- | ---------------------- |
| ConditionID  | NUMBER(10)  | PK, NOT NULL                       | Environment reading ID |
| ProductID    | NUMBER(10)  | FK → Products(ProductID), NOT NULL | Product measured       |
| Temperature  | NUMBER(5,2) | NULL                               | Temperature reading    |
| Humidity     | NUMBER(5,2) | NULL                               | Humidity reading       |
| DateRecorded | DATE        | NOT NULL                           | When reading was taken |

