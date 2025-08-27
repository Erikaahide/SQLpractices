-- consulta con SELECT
-- SELECT columa(s) FROM tabla;
SELECT * FROM employee;
SELECT employee_id, first_name FROM employee;
SELECT employee.employee_id, employee.fist_name FROM employee;
-- uso de select distinct para evitar info duplicada

INSERT INTO employee (first_name, last_name, salary, join_date, department)
VALUES ('Erika', 'Hernandez', 12345678, '2025-08-27', 'Admin');
