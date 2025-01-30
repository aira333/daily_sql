-- Filter students in Active clubs

SELECT s.id, s.name, s.club_id
FROM playground.students s
INNER JOIN playground.clubs c ON s.club_id = c.id
ORDER BY s.id;
