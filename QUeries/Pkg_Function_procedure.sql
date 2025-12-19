--Procedure
CREATE OR REPLACE PROCEDURE CREATE_SPOILAGE_ALERT (
    p_product_id IN NUMBER,
    p_message    IN VARCHAR2
) AS
BEGIN
    INSERT INTO SpoilageAlerts (
        AlertID,
        ProductID,
        AlertDate,
        Message,
        Status
    )
    VALUES (
        SEQ_SPOILAGE_ALERTS.NEXTVAL,
        p_product_id,
        SYSDATE,
        p_message,
        'PENDING'
    );

    COMMIT;
END;
/


--Function
--Days Until Expiry

CREATE OR REPLACE FUNCTION days_until_expiry(p_product_id NUMBER)
RETURN NUMBER IS
  v_days NUMBER;
BEGIN
  SELECT expirydate - SYSDATE
  INTO v_days
  FROM products
  WHERE productid = p_product_id;

  RETURN v_days;
END;
/

--PACKAGE (GROUP LOGIC)

CREATE OR REPLACE PACKAGE esds_pkg AS
  FUNCTION days_until_expiry(p_product_id NUMBER) RETURN NUMBER;
  PROCEDURE create_spoilage_alert(p_product_id NUMBER, p_message VARCHAR2);
END esds_pkg;
/
sql
Copy code
CREATE OR REPLACE PACKAGE BODY esds_pkg AS

  FUNCTION days_until_expiry(p_product_id NUMBER) RETURN NUMBER IS
    v_days NUMBER;
  BEGIN
    SELECT expirydate - SYSDATE
    INTO v_days
    FROM products
    WHERE productid = p_product_id;

    RETURN v_days;
  END;

  PROCEDURE create_spoilage_alert(p_product_id NUMBER, p_message VARCHAR2) IS
  BEGIN
    INSERT INTO spoilagealerts
    VALUES (
      spoilagealerts_seq.NEXTVAL,
      p_product_id,
      SYSDATE,
      p_message,
      'PENDING'
    );
  END;

END esds_pkg;
/

