# PLSQL-Practicum-Project-ESDS
**Early Spoilage Detection System (ESDS)**

A PL/SQL–based system designed to automatically detect, track, and alert staff about products approaching spoilage. This project focuses on reducing waste, improving stock freshness, and supporting data-driven inventory management.

**Project Overview**

The Early Spoilage Detection System (ESDS) monitors perishable inventory items by calculating expected spoilage dates and generating alerts when items fall below safety or freshness thresholds.

-The system uses PL/SQL triggers, functions, and stored procedures to:

-Detect items with short remaining shelf-life

-Insert automated alerts

-Track spoilage risk

-Support store managers with real-time insights

This project demonstrates real-world use of PL/SQL for automation, data integrity, and process optimization.

**Key Features**

-Automatic Spoilage Date Calculation when a new item is added

-Trigger-Based Alerts for items below the safety threshold

-Spoilage Risk Evaluation Function

-Daily Scheduled Check Procedure (simulation in PL/SQL)

-Alert Log for Managers

-Role-Based Access (Inventory Staff vs System vs Store Manager)

**Below is the business workflow represented in BPMN with swimlanes.**

<img width="1151" height="521" alt="ESDS_BPMN_Diagram drawio (2) drawio" src="https://github.com/user-attachments/assets/ac344050-9bc7-4545-904f-df796183ab65" />

**Database Schema**

The ESDS system uses six relational tables to manage all product and monitoring operations:


### **1. Products**
| Column | Description |
|--------|-------------|
| ProductID (PK) | Unique product identifier |
| Name | Product name |
| Category | Product category |
| ManufactureDate | Date the product was manufactured |
| ExpiryDate | Date product expires |
| StorageCondition | Required storage environment |

---

### **2. Inventory**
| Column | Description |
|--------|-------------|
| InventoryID (PK) | Inventory record ID |
| ProductID (FK) | References Products |
| Quantity | Number of items in stock |
| ReceivedDate | Date received in store |
| Location | Physical storage location |

---

### **3. SpoilageAlerts**
| Column | Description |
|--------|-------------|
| AlertID (PK) | Alert record ID |
| ProductID (FK) | References Products |
| AlertDate | Date the alert was generated |
| Message | Description of the spoilage risk |
| Status | Pending / Resolved |

---

### **4. Sales**
| Column | Description |
|--------|-------------|
| SaleID (PK) | Sale record ID |
| ProductID (FK) | References Products |
| Quantity | Quantity sold |
| SaleDate | When the sale occurred |

---

### **5. Suppliers**
| Column | Description |
|--------|-------------|
| SupplierID (PK) | Supplier record ID |
| Name | Supplier name |
| ContactInfo | Contact information |

---

### **6. StorageConditions**
| Column | Description |
|--------|-------------|
| ConditionID (PK) | Condition record ID |
| ProductID (FK) | References Products |
| Temperature | Temperature reading |
| Humidity | Humidity reading |
| DateRecorded | When the reading was taken |

---

##  System Overview





