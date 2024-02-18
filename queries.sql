--Part 1
--Columns: id, employer, name, skills

--Part 2
SELECT name FROM employer WHERE location = "St. Louis City";

--Part 3
DROP TABLE job;

--Part 4 ???
 SELECT DISTINCT skills FROM job
 WHERE (INNER JOIN job ON skill.id = job.skills)
 ORDER BY skill.name;