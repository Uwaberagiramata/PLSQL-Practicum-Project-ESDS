# Assumptions

1. **Products can appear multiple times in the inventory** due to restocking events.
2. **Environmental data (temperature & humidity) may arrive every minute or every hour**, depending on sensor frequency or simulation.
3. **Spoilage alert messages are generated automatically** using PL/SQL triggers whenever temperature or expiry rules are violated.
4. **Alert statuses must be manually updated by store managers** after reviewing the spoiled or risky product.
5. Suppliers provide products but do not track environmental data — only inventory and conditions do.
6. One product can be stored in multiple locations (e.g., different fridges or shelves).
7. The system assumes accurate timestamps for inventory, storage condition readings, and alerts.

