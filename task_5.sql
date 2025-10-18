-- SQL script to insert a single row into the 'customer' table.
-- The database name will be passed as an argument to the mysql command.

INSERT INTO customer (
  customer_id,
  customer_name,
  email,
  address
)
VALUES (
  1,
  'Cole Baidoo',
  'cbaidoo@sandtech.com',
  '123 Happiness Ave.'
);
