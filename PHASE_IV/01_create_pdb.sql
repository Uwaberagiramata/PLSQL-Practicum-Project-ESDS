01_create_pdb.sql

-- ============================================
-- 01 - CREATE PDB  
-- GROUP B – ESDS PROJECT
-- ============================================

ALTER SESSION SET container = CDB$ROOT;

CREATE PLUGGABLE DATABASE B_28741_ESDS_PDB
  ADMIN USER pdb_admin IDENTIFIED BY Admin123
  FILE_NAME_CONVERT = (
    '/opt/oracle/oradata/ORCLCDB/pdbseed/',
    '/opt/oracle/oradata/ORCLCDB/B_28741_ESDS_PDB/'
  );

-- Open the PDB
ALTER PLUGGABLE DATABASE B_28741_ESDS_PDB OPEN;

-- Save state after restart
ALTER PLUGGABLE DATABASE B_28741_ESDS_PDB SAVE STATE;

