📌 Phase IV – Database Creation
Early Spoilage Detection System (ESDS)
📖 1. Project Overview

This phase focuses on the creation and configuration of the Oracle Pluggable Database (PDB) for the Enterprise Smart Dairy System (ESDS). The goal is to build a secure, scalable, and well-structured database environment that supports all system modules, including product tracking, inventory, spoilage alerts, and BI reporting.

This phase demonstrates my ability to:

Create a new Oracle PDB
Configure administrator users
Set up tablespaces
Enable essential database parameters
Prepare the environment for PL/SQL development
🛠️ 2. Database Creation Details
✔ 2.1 PDB Name GrpB_28741_Sheilla_ESDS_DB

📌 3. Admin User Configuration
Item	Value
Username	esds_admin
Password	sheilla (as required)
Privileges	DBA / SUPER ADMIN
The admin user has full privileges to manage:

Tables
Views
Triggers
Sequences
Packages
Tablespaces
System configurations
📌 4. Tablespace Setup
📂 3. Tablespaces Created

Main Data Tablespace

ESDS_DATA_TBS

Index Tablespace

ESDS_INDEX_TBS

Temporary Tablespace

ESDS_TEMP_TBS

Configuration Includes
Autoextend ON

Initial size: 100MB

Max size: Unlimited or as allowed by server

Datafile location documented in scripts

⚙️ 4. System Configuration
Feature	Status
SGA / PGA memory parameters	Configured
Archive logging	Enabled
Autoextend	Enabled
Create user + grant privileges	Completed
Open PDB in read/write mode	Completed
