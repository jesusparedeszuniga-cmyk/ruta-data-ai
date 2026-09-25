-- shop_demo.sql
-- Demo data for the JOIN examples. Store domain, not the legal one.
-- Lives in its own schema so it never touches your `cases` / `clients` work.
-- Run it with:  psql -d your_database -f shop_demo.sql

DROP SCHEMA IF EXISTS shop_demo CASCADE;
CREATE SCHEMA shop_demo;
SET search_path TO shop_demo;

CREATE TABLE products (
    product_id  integer PRIMARY KEY,
    name        text NOT NULL,
    unit_price  numeric(10,2) NOT NULL
);

-- No FOREIGN KEY on product_id: it is left out on purpose so the
-- orphan row below can exist. A real schema would forbid it.
CREATE TABLE orders (
    order_id    integer PRIMARY KEY,
    product_id  integer,
    quantity    integer NOT NULL
);

INSERT INTO products (product_id, name, unit_price) VALUES
    (1, 'Notebook',   4.50),
    (2, 'Pen',        1.20),
    (3, 'Backpack',  32.00),
    (4, 'Stapler',    8.75),
    (5, 'Desk lamp', 21.00);   -- never ordered

INSERT INTO orders (order_id, product_id, quantity) VALUES
    (101,    1,  3),
    (102,    2, 10),
    (103,    1,  1),
    (104,    3,  2),
    (105,    2,  5),
    (106,    4,  1),
    (107,   77,  2),           -- orphan: product 77 does not exist
    (108, NULL,  4);           -- no product assigned yet

-- 8 rows in orders, 5 rows in products.


-- Example 1 -----------------------------------------------------------
-- Each order with the name of its product.

SELECT o.order_id, p.name, o.quantity
FROM orders AS o
INNER JOIN products AS p ON o.product_id = p.product_id;


-- Example 2 -----------------------------------------------------------
-- Orders per product.

SELECT p.name, COUNT(*)
FROM products AS p
INNER JOIN orders AS o ON p.product_id = o.product_id
GROUP BY p.name;

-- Example 3
-- All products, included desk. lamp with order_id NULL
SELECT p.name, o.order_id
FROM products AS p
LEFT JOIN orders AS o ON p.product_id = o.product_id;

-- Example 4
-- All 8 orders included orphan and NULL, desklamp disappeared
SELECT o.order_id, p.name
FROM orders AS o
LEFT JOIN products AS p ON o.product_id = p.product_id;

-- Example 5
-- Producst per order
SELECT p.name, COUNT(o.order_id)
FROM products AS p
LEFT JOIN orders AS o ON p.product_id = o.product_id
GROUP BY p.name;

-- Example 6
-- Only products matched and quantity >2
SELECT p.name, o.order_id, o.quantity
FROM products AS p
LEFT JOIN orders AS o ON p.product_id = o.product_id
WHERE o.quantity > 2;

-- Example 7 
-- Products matched, quantity >2,  and NULL
SELECT p.name, o.order_id, o.quantity
FROM products AS p
LEFT JOIN orders AS o ON p.product_id = o.product_id AND o.quantity > 2;

-- Example 8
-- Only products matched and quantity >2 or products order quantity IS NULL
SELECT p.name, o.order_id, o.quantity
FROM products AS p
LEFT JOIN orders AS o ON p.product_id = o.product_id
WHERE o.quantity > 2 OR o.quantity IS NULL;