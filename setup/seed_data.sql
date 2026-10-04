INSERT INTO customers (
    first_name,
    last_name,
    email
)
VALUES
    ('Alice', 'Smith', 'alice@example.com'),
    ('Bob', 'Jones', 'bob@example.com'),
    ('Carol', 'Miller', 'carol@example.com'),
    ('David', 'Brown', 'david@example.com');

INSERT INTO accounts (
    customer_id,
    account_type,
    opened_date,
    status
)
VALUES
    (1, 'Checking', '2024-01-10', 'Active'),
    (1, 'Savings',  '2024-02-15', 'Active'),
    (2, 'Checking', '2024-03-01', 'Active'),
    (3, 'Savings',  '2024-04-20', 'Closed'),
    (4, 'Checking', '2024-05-05', 'Active');

INSERT INTO transactions (
    account_id,
    transaction_date,
    amount,
    transaction_type,
    description
)
VALUES
    (1, '2026-09-01', 1200.00, 'Deposit', 'Payroll'),
    (1, '2026-09-02', -75.50, 'Purchase', 'Groceries'),
    (2, '2026-09-03', 300.00, 'Deposit', 'Transfer'),
    (3, '2026-09-04', -45.25, 'Purchase', 'Gas'),
    (3, '2026-09-05', 500.00, 'Deposit', 'Payroll'),
    (5, '2026-09-06', -120.00, 'Purchase', 'Utilities');