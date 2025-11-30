**Phase II — Business Process Modeling Explanation**

**Early Spoilage Detection System (ESDS)**

The Early Spoilage Detection System (ESDS) models how supermarkets, pharmacies, and retail stores monitor the freshness of perishable inventory. The BPMN diagram describes a structured workflow across three main actors: Inventory Staff, the System, and the Store Manager.

**1. Scope of the Business Process**

The process focuses on detecting products that are nearing spoilage and notifying management before losses occur. Its main goals are:

-Ensure products are monitored from entry to potential spoilage.

-Reduce financial loss caused by expired goods.

-Improve decision-making through automated detection and alerts.

-Maintain high-quality inventory for customers.

This process is directly relevant to Management Information Systems (MIS) because it integrates operations, data tracking, auditing, and automated decision support.

**2. Key Entities and Roles**

**Inventory Staff**

-Enters new product and inventory details.

-Records received items and their locations.

**System (ESDS)**

-Automatically calculates shelf-life.

-Monitors expiry and environmental conditions.

-Generates alerts when spoilage risk is high.

-Logs all actions for auditing and BI.

**Store Manager**

-Reviews spoilage alerts.

-Takes action (remove, discount, or relocate stock).

-Confirms and resolves alerts.

**3. Swimlane Breakdown**

**The BPMN diagram is divided into three lanes:**

**Lane 1: Inventory Staff**

-Add new inventory item

-Save item information

-Submit inventory details to system

**Lane 2: System**

-Calculate expected expiry

-Evaluate spoilage risk

-Check if shelf-life is below threshold

-Generate alert

-Store alert in SpoilageAlerts table

-Log activity for audit

**Lane 3: Store Manager**

-Receive “High Spoilage Risk” alert

-Take corrective action

-Mark alert as “Resolved”

**4. Logical Flow Summary**

-Inventory staff adds new product details into the system.

-System records the item and calculates its expected spoilage date.

-The system evaluates whether the shelf-life is below the threshold.

-If at risk → system issues a spoilage alert to the store manager.

-Store manager reviews the alert and takes action.

-System logs all steps for future auditing and BI analytics.

**5. MIS Impact and Organizational Value**

-Reduces waste and financial loss

-Improves cross-department coordination

-Provides data for decision-making

-Ensures compliance through auditing

-Enables BI dashboards for spoilage trends and supplier quality
