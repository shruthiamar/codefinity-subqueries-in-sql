SELECT customer_id, name, city FROM customers c
    WHERE (c.city = 'New York' OR c.city = 'Los Angeles')
    AND c.customer_id IN (SELECT customer_id FROM orders o WHERE o.customer_id = c.customer_id );