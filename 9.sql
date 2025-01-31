-- identifying the bank robber 

SELECT id, name, surname
FROM playground.suspect
WHERE height <= 170
AND (name ILIKE 'B.%' OR name ILIKE 'b.%')
AND surname ILIKE 'Gre_n'
ORDER BY id ASC;
