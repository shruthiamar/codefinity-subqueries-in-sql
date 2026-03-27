SELECT c.customer_id, c.name, order_counts.order_count FROM (SELECT customer_id, COUNT(*) AS order_count FROM orders
    GROUP BY customer_id) AS order_counts 
    JOIN customers c ON order_counts.customer_id = c.customer_id
    ORDER BY order_count DESC, c.customer_id ASC
    LIMIT 3;