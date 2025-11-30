# PLSQL-Practicum-Project-ESDS

Student Information

Name: Giramata Sheilla
Project: Early Spoilage Detection System (ESDS)
Course: PL/SQL Practicum Final Assessment



**Early Spoilage Detection System (ESDS)**

A PL/SQL–based system designed to automatically detect, track, and alert staff about products approaching spoilage. This project focuses on reducing waste, improving stock freshness, and supporting data-driven inventory management.

**Project Overview**

The Early Spoilage Detection System (ESDS) is a PL/SQL-driven solution designed to help businesses—especially supermarkets, retailers, and pharmacies—automatically detect, track, and alert products that are close to spoilage before they become waste.

The system monitors product shelf-life, evaluates environmental conditions, generates alerts, and helps management take preventive actions to reduce losses.

-The system uses PL/SQL triggers, functions, and stored procedures to:

-Detect items with short remaining shelf-life

-Insert automated alerts

-Track spoilage risk

-Support store managers with real-time insights

This project demonstrates real-world use of PL/SQL for automation, data integrity, and process optimization.

 Core PL/SQL Features

##My project will include:

✔ Stored Procedures

-Add new inventory

-Calculate spoilage

-Generate alerts

✔ Functions

-Days until expiry

-Spoilage risk level

-Environmental evaluation

✔ Triggers

-Auto-alert trigger when shelf-life < threshold

-Audit logging on insert/update/delete

-Business rule: no modifications allowed on weekdays or holidays

✔ Packages

Grouped logic for:

-Inventory operations

-Spoilage detection

-Alert management

4. Target Users

-Inventory Managers

-Store Supervisors

-Warehouse Operators

-Quality Assurance Teams

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

1. Inventory staff enters new product details  
2. System logs the item into the database  
3. ESDS checks how close the product is to expiry  
4. If spoilage risk is HIGH → System creates an alert  
5. Store manager receives alert and takes action  
6. Environmental conditions are logged continuously
   





