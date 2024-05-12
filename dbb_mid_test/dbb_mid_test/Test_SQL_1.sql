CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

SELECT DISTINCT 
	salary 
from 
	(SELECT 
     	salary 
     from employee_table 
     ORDER by salary DESC limit 3)
LIMIT 1;
