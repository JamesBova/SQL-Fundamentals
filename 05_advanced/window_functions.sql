SELECT
    account_id,
    transaction_id,
    transaction_date,
    amount,
    ROW_NUMBER() OVER (
        PARTITION BY account_id
        ORDER BY transaction_date
    ) AS row_num
FROM transactions;

SELECT
    account_id,
    transaction_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY account_id
        ORDER BY transaction_date
    ) AS running_balance
FROM transactions;

SELECT
    account_id,
    amount,
    RANK() OVER (
        PARTITION BY account_id
        ORDER BY amount DESC
    ) AS amount_rank
FROM transactions;

SELECT
    account_id,
    transaction_date,
    amount,

    LAG(amount) OVER (
        PARTITION BY account_id
        ORDER BY transaction_date
    ) AS previous_amount,

    LEAD(amount) OVER (
        PARTITION BY account_id
        ORDER BY transaction_date
    ) AS next_amount

FROM transactions;