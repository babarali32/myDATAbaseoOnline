USE sql12676917;

-- Drop tables (if they exist)
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS employees;

-- Create employees table
CREATE TABLE employees (
    id INT(10) PRIMARY KEY NOT NULL,
    salary DECIMAL(20,2)
);

-- Create person table
CREATE TABLE person (
    id INT(10) PRIMARY KEY NOT NULL,
    firstname VARCHAR(25),
    lastname VARCHAR(20),
    age INT(10),
    emp_id INT(10),
    FOREIGN KEY (emp_id) REFERENCES employees(id)
);
SELECT * FROM person WHERE id=1;
DELETE FROM person WHERE id=1;
UPDATE person SET firstname='pakistan' WHERE firstname='vowels' limit 1;
SET SQL_SAFE_UPDATES = 1;  -- this is one which is true mean activate safe update
-- Insert values into employees table
INSERT INTO employees (id, salary) VALUES (1, 1000);
INSERT INTO employees (id, salary) VALUES (2, 1400);
INSERT INTO employees (id, salary) VALUES (3, 1200);
INSERT INTO employees (id, salary) VALUES (4, 1100);
INSERT INTO employees (id, salary) VALUES (5, 1300);
-- Insert values into person table
INSERT INTO person (id, firstname, lastname, age, emp_id) VALUES (1, 'twa', 'saw', 25, 1);
INSERT INTO person (id, firstname, lastname, age, emp_id) VALUES (2, 'twie', 'sew', 22, 2);
INSERT INTO person (id, firstname, lastname, age, emp_id) VALUES (3, 'twi', 'siw', 44, 3);
INSERT INTO person (id, firstname, lastname, age, emp_id) VALUES (4, 'two', 'sow', 55, 4);
INSERT INTO person (id, firstname, lastname, age, emp_id) VALUES (5, 'twu', 'suw', 12, 5);

