--Part 1
--Columns: id, employer, name, skills

--Part 2
SELECT name FROM employer WHERE location = "St. Louis City";

--Part 3
DROP TABLE job;

--Part 4
-- this query actually yields what the assignment asks for:
-- SELECT DISTINCT name FROM skill
-- INNER JOIN job_skills ON skill.id = job_skills.skills_id
-- ORDER BY skill.name;

-- this query does not yield what the assignment asked for:
SELECT * FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;