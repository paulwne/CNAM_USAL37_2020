USE usal37_employees;

SELECT * FROM projects;
SELECT * FROM services;
SELECT * FROM employees;
SELECT * FROM teams;


SELECT employee_id, employee_name, service_name 
FROM employees  
JOIN services ON employees.service_id = services.service_id;



SELECT 
employee_id, 
employee_name, 
service_name, 
services.service_id 
FROM employees  
JOIN services ON employees.service_id = services.service_id
WHERE services.service_id=1; 


SELECT 
employee_id AS IDENTIFIANT, 
employee_name, 
service_name
FROM employees  
JOIN services ON employees.service_id = services.service_id
WHERE services.service_id=1; 



SELECT 
employee_id, 
employee_name, 
service_name
FROM employees AS E 
JOIN services AS S 
ON E.service_id = S.service_id; 



SELECT 
E1.employee_id, 
E1.employee_name,
E2.employee_name AS manager_name 
FROM employees AS E1 
JOIN employees AS E2 
ON E1.employee_id_manager = E2.employee_id
;


SELECT 
E1.employee_id, 
E1.employee_name, 
E2.employee_name AS manager_name 
FROM employees AS E1 
LEFT JOIN employees AS E2 
ON E2.employee_id = E1.employee_id_manager;



SELECT 
E1.employee_id, 
E1.employee_name, 
S1.service_name, 
E2.employee_name AS manager_name 
FROM employees AS E1 
LEFT JOIN employees AS E2 ON E2.employee_id = E1.employee_id_manager
JOIN services S1 ON E1.service_id = S1.service_id;

