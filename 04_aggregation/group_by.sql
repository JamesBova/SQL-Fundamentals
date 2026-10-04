SELECT
    account_id,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY account_id;