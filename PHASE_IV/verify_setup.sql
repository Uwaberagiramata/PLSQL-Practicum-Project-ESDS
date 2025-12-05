-- ============================================
-- PHASE IV - VERIFY SETUP
-- GROUP B
-- ============================================

ALTER SESSION SET CONTAINER = B_12345_Sheilla_ESDS_PDB;

SELECT name, open_mode FROM v$pdbs;

SHOW CON_NAME;

SELECT table_name FROM user_tables;

SELECT * FROM Suppliers;
SELECT * FROM Products;
SELECT * FROM Inventory;
SELECT * FROM SpoilageAlerts;
SELECT * FROM Sales;
SELECT * FROM StorageConditions;

