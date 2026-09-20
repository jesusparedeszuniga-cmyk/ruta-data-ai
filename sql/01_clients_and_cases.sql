-- 01_clients_and_cases.sql
-- Month 1, week 3 — JOINs and NULLs.
-- Builds the client table and the case-client relationship on top of the
-- existing `cases` table, with deliberate anomalies used to exercise JOIN
-- behaviour.
--
-- Run with:  psql -d sandbox -f sql/01_clients_and_cases.sql
--
-- PENDING: `cases` itself is not created here. It was populated by hand in
-- week 2 and has no script. Until that exists, this file cannot rebuild the
-- database from scratch.


-- 1. Client table -----------------------------------------------------

CREATE TABLE clients (
    client_id integer PRIMARY KEY,
    name      text NOT NULL,
    email     text
);

INSERT INTO clients (client_id, name, email) VALUES
    (1, 'Karlo Perez', 'kperez@email.com'),
    (2, 'Juan Chang', NULL),
    (3, 'Maria Torres', NULL),
    (4, 'Luis Ramirez', 'lramirez@email.com'),
    (5, 'Sofia Mendoza', NULL),
    (6, 'Diego Castillo', 'dcastillo@email.com'),
    (7, 'Andrea Flores', 'aflores@email.com'),
    (8, 'Carlos Vargas', 'cvargas@email.com');


-- 2. Relationship column ----------------------------------------------

-- Without Foreign KEY because orphan shows what INNER JOIN does

ALTER TABLE cases ADD COLUMN client_id integer;


-- 3. Populate ----------------------------------------------------------

UPDATE cases SET client_id = 1 WHERE case_id IN ('1', '5', '10');
UPDATE cases SET client_id = 2 WHERE case_id IN ('2', '8', '14');
UPDATE cases SET client_id = 3 WHERE case_id IN ('3', '7', '9');
UPDATE cases SET client_id = 4 WHERE case_id IN ('4', '6');
UPDATE cases SET client_id = 5 WHERE case_id IN ('12');

-- 11 and 13 NULL, redundant to enter them, is default
UPDATE cases SET client_id = NULL WHERE case_id IN ('11', '13');

-- 15 is an orphan case not found in the other table
UPDATE cases SET client_id = 66 WHERE case_id IN ('15');

-- Clients 6, 7 and 8 are left with no cases on purpose.


-- 4. Exercise queries --------------------------------------------------

-- Every client with its case count, zeros included.
SELECT cl.name,
       COUNT(ca.client_id) AS number_cases
FROM clients AS cl
LEFT JOIN cases AS ca ON ca.client_id = cl.client_id
GROUP BY cl.name;

-- Same condition in WHERE: the LEFT JOIN collapses into an INNER JOIN.
SELECT cl.name, ca.settlement_amount
FROM clients AS cl
LEFT JOIN cases AS ca ON ca.client_id = cl.client_id
WHERE ca.settlement_amount > 100000;

-- Same condition in ON: every client survives, unmatched ones filled with NULL.
SELECT cl.name, ca.settlement_amount
FROM clients AS cl
LEFT JOIN cases AS ca ON ca.client_id = cl.client_id AND ca.settlement_amount > 100000;

-- Row count vs value count. The difference is the number of NULLs.
SELECT COUNT(*) AS number_clients,
       COUNT(email) AS with_email
FROM clients;
