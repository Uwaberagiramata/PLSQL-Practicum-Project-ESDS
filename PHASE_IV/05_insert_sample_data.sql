-- ============================================
-- PHASE IV - SAMPLE DATA INSERTION
-- GROUP B
-- ============================================

ALTER SESSION SET CONTAINER = B_12345_Sheilla_ESDS_PDB;
ALTER SESSION SET CURRENT_SCHEMA = ESDS_ADMIN;

-- Suppliers
INSERT INTO Suppliers VALUES (1, 'Rwanda Dairy LTD', 'rwanda_dairy@gmail.com');
INSERT INTO Suppliers VALUES (2, 'FreshFarm Suppliers', 'freshfarm@gmail.com');

-- Products
INSERT INTO Products VALUES (101, 1, 'Milk Package', 'Dairy', DATE '2025-01-01', DATE '2025-01-10', 'Refrigerated');
INSERT INTO Products VALUES (102, 2, 'Yoghurt', 'Dairy', DATE '2025-01-02', DATE '2025-01-12', 'Cool Shelf');

-- Inventory
INSERT INTO Inventory VALUES (1001, 101, 300, SYSDATE, 'Cold Storage A');
INSERT INTO Inventory VALUES (1002, 102, 150, SYSDATE, 'Cold Storage B');

-- Spoilage Alerts
INSERT INTO SpoilageAlerts VALUES (501, 101, SYSDATE, 'Temperature exceeded safe limit', 'PENDING');

-- Sales
INSERT INTO Sales VALUES (7001, 101, 20, SYSDATE);

-- Storage Conditions
INSERT INTO StorageConditions VALUES (9001, 101, 4.5, 60.1, SYSDATE);

COMMIT;

