-- SET sql_safe_updates = 0;
-- SET FOREIGN_KEY_CHECKS = 0; 
-- DROP TABLES employer, employer_seq, job, job_seq, job_skills, skill, skill_seq;
-- DELETE from job WHERE id > 0;
-- DELETE FROM job WHERE name="New Job";
-- SET FOREIGN_KEY_CHECKS = 1;
-- SET sql_safe_updates = 1;
-- SELECT * FROM job;
-- WHERE job.id = 5;
-- SELECT * FROM employer;
SELECT * FROM skill;
-- SELECT * FROM job_skills;
SELECT DISTINCT name FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
ORDER BY skill.name;
SELECT * FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;