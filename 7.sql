-- Identify empty departments

SELECT d.dep_name 
FROM playground.departments d
LEFT JOIN playground.employees e 
ON d.id = e.department
WHERE e.department IS NULL
ORDER BY d.id;
