SELECT
    account_id,
    amount
FROM transactions
WHERE amount > (
    SELECT AVG(amount)
    FROM transactions
);