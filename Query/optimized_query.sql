SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_amount) AS total_spent,
    AVG(o.order_amount) AS avg_order_value
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_date >= '2025-01-01'
  AND o.order_date < '2026-01-01'
GROUP BY c.customer_id,c.customer_name,c.city
HAVING COUNT(o.order_id) > 5
   AND SUM(o.order_amount) > 10000
ORDER BY total_spent DESC;