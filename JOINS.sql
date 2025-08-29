SHOW TABLES;
SELECT * FROM countries;
SELECT * FROM courses;
SELECT * FROM courses_has_students;
SELECT * FROM idtypes;
SELECT * FROM modules;
SELECT * FROM students;
-- Conteo de cursos
SELECT COUNT(code) FROM courses;
-- Conteo de estudiantes
SELECT COUNT(idStudent) FROM students;
-- Unir tabla 'Students' y 'Countries'
SELECT students.*, countries.*
FROM Students
INNER JOIN Countries
ON students.nationality = countries.idCountries;
-- Solo aparezcan algunas columnas, agregar un Alias
SELECT students.idStudent AS EstudianteID, countries.idCountries AS `NúmeroPaís`, countries.Name AS `NombrePaís`
FROM Students
INNER JOIN Countries
ON students.nationality = countries.idCountries;
-- Encontrar todos los estudiantes en un pais en especifico (Código 121)
SELECT `name`
FROM Students
WHERE nationality IN ('121');
-- verificar si hay estudiantes con el código 121
SELECT COUNT(*) FROM Students WHERE nationality = 121;

-- Conteo de todos los estudiantes en el curso Java-1
-- code es Java-1
SELECT  COUNT(*)
FROM courses_has_students
WHERE course_code = ('Java-1');