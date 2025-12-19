--Purpose: Identify products that will expire soon.
SELECT 
    p.productid,
    p.name,
    p.category,
    p.expirydate,
    (p.expirydate - SYSDATE) AS days_remaining
FROM products p
WHERE p.expirydate - SYSDATE <= 7
ORDER BY days_remaining;

--Purpose: Rank products by total sales.
SELECT 
    p.name,
    SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p
    ON s.productid = p.productid
GROUP BY p.name
ORDER BY total_sold DESC;
--Used in performance & revenue dashboards

--Purpose: Show how many alerts exist per product.
SELECT 
    p.name AS product_name,
    COUNT(sa.alertid) AS total_alerts
FROM products p
JOIN spoilagealerts sa
    ON p.productid = sa.productid
GROUP BY p.name
ORDER BY total_alerts DESC;

-- BI insight: Which products are most problematic

--Uses: RANK()
SELECT 
    p.name,
    COUNT(sa.alertid) AS alert_count,
    RANK() OVER (ORDER BY COUNT(sa.alertid) DESC) AS spoilage_rank
FROM products p
LEFT JOIN spoilagealerts sa
    ON p.productid = sa.productid
GROUP BY p.name;

--Shows spoilage trends over time
SELECT 
    TRUNC(alertdate) AS alert_day,
    COUNT(*) AS total_alerts
FROM spoilagealerts
GROUP BY TRUNC(alertdate)
ORDER BY alert_day;

--Purpose: Correlate storage temperature with spoilage alerts.
SELECT 
    p.name,
    AVG(sc.temperature) AS avg_temperature,
    COUNT(sa.alertid) AS alert_count
FROM products p
JOIN storageconditions sc
    ON p.productid = sc.productid
LEFT JOIN spoilagealerts sa
    ON p.productid = sa.productid
GROUP BY p.name
ORDER BY alert_count DESC;
-- Supports environment-based decisions

--LAG Function – Detect Sudden Temperature Changes
SELECT 
    productid,
    daterecorded,
    temperature,
    temperature - LAG(temperature)
        OVER (PARTITION BY productid ORDER BY daterecorded) AS temp_change
FROM storageconditions;

--LAG Function – Detect Sudden Temperature Changes
SELECT 
    productid,
    daterecorded,
    temperature,
    temperature - LAG(temperature)
        OVER (PARTITION BY productid ORDER BY daterecorded) AS temp_change
FROM storageconditions;

