-- determining order of succession

SELECT 
    CASE 
        WHEN gender = 'male' THEN CONCAT('King ', name)
        WHEN gender = 'female' THEN CONCAT('Queen ', name)
    END AS name,
    birthday
FROM playground.successors
ORDER BY birthday ASC;
