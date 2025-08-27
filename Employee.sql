-- Escribe el commando que te permite usar la BD "business".
USE business;
-- Consulta que tablas existen dentro de la BD.
SHOW TABLES;
-- Muestra en una consulta toda la información de la tabla "employee".
SELECT * FROM employee;
-- Devuelve esa misma consulta pero con los id's en orden inverso.
SELECT * FROM employee ORDER BY employee_id DESC;
-- Muestra únicamente los nombres y apellidos de cada empleado, 
-- modifica el nombre del atributo para que se muestre en camelCase.
SELECT first_name AS firstName, last_name AS lastName
FROM employee;
-- Consulta las fechas de ingreso sin duplicados, 
-- en orden cronológico (de la más antigua a la más reciente)
SELECT DISTINCT join_date FROM employee ORDER BY join_date ASC;
-- Agrega 10 registros nuevos, generar los nombres, apellidos, fechas de ingreso y salarios
INSERT INTO employee (employee_id, first_name, last_name, salary, join_date, department)
VALUES
  (NULL, 'Liam',      'Walker',   100000, '2014-02-11', 'IT'),
  (NULL, 'Olivia',    'Bennett',   90000, '2015-05-19', 'HR'),
  (NULL, 'Noah',      'Mitchell', 200000, '2016-07-07', 'Sales'),
  (NULL, 'Emma',      'Parker',   300000, '2017-03-13', 'Admin'),
  (NULL, 'William',   'Hughes',   400000, '2018-10-22', 'Finance'),
  (NULL, 'Ava',       'Foster',   500000, '2019-01-15', 'IT'),
  (NULL, 'James',     'Reed',     600000, '2020-06-03', 'Marketing'),
  (NULL, 'Charlotte', 'Morgan',   100000, '2014-09-09', 'HR'),
  (NULL, 'Benjamin',  'Carter',    90000, '2016-11-28', 'Sales'),
  (NULL, 'Amelia',    'Brooks',   200000, '2018-04-17', 'Admin');
-- Muestra nuevamente toda la información de "employee".
SELECT * FROM employee;
-- Consulta para mostrar únicamente los empleados/as que se encuentren entre el registro 7 y 14. 
SELECT * FROM employee WHERE employee_id BETWEEN 6 AND 14;
-- Consulta que muestre solo los registros donde el id sea un número par.
SELECT * FROM employee WHERE employee_id % 2 = 0;
-- Registros donde el nombre del empleado/a inicie con una vocal.
SELECT * FROM employee
WHERE first_name LIKE 'A%' 
   OR first_name LIKE 'E%' 
   OR first_name LIKE 'I%' 
   OR first_name LIKE 'O%' 
   OR first_name LIKE 'U%';
-- Registros donde  el apellido termine con una vocal.
SELECT * FROM employee
WHERE last_name LIKE '%a'
   OR last_name LIKE '%e'
   OR last_name LIKE '%i'
   OR last_name LIKE '%o'
   OR last_name LIKE '%u';
-- Registros donde la fecha de ingreso
-- Inicio de año
SELECT * FROM employee WHERE MONTH(join_date) BETWEEN 1 AND 4;
-- Mitad de año
SELECT * FROM employee
WHERE MONTH(join_date) BETWEEN 5 AND 8;
-- Fin de año
SELECT * FROM employee
WHERE MONTH(join_date) BETWEEN 9 AND 12;

