SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    a.account_id,
    a.account_type
FROM customers c
LEFT JOIN accounts a
    ON c.customer_id = a.customer_id;