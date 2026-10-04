WITH account_totals AS (
    SELECT
        account_id,
        SUM(amount) AS total_amount
    FROM transactions
    GROUP BY account_id
)

SELECT *
FROM account_totals
WHERE total_amount > 500;
