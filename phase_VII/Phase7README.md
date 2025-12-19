# Phase VII – Advanced Programming & Auditing
## Early Spoilage Detection System (ESDS)

This phase implements business rules, auditing, and security controls using PL/SQL.

### Features Implemented
- Weekday & holiday DML restrictions
- Centralized restriction function
- Full audit logging
- Compound triggers
- Custom error handling

### Key Objects
- holidays table
- audit_log table
- is_restricted_day function
- log_audit procedure
- compound trigger on inventory

### Testing
- Weekday DML → DENIED
- Weekend DML → ALLOWED
- Audit records captured for all attempts
