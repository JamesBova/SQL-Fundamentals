SELECT
    transaction_type,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;

SELECT
    account_id,
    SUM(amount) AS total_amount
FROM transactions
WHERE transaction_type = 'Deposit'
GROUP BY account_id
HAVING SUM(amount) > 500;