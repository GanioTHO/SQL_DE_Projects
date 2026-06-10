/* What are the highest paying skills for Data Engineer?
- calculate median salary for each skill required in Data Engineer positions
- focus on remote positions with specified salaries
- include skill frequency to identify both salary and demand
*/

SELECT
    sd.skills,
    ROUND(MEDIAN(jpf.salary_year_avg), 0) as median_salary,
    COUNT(*) AS amount
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
    ON sjd.job_id = jpf.job_id
INNER JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
WHERE (job_work_from_home) AND (jpf.job_title_short = 'Data Engineer')
GROUP BY sd.skills
HAVING COUNT(jpf.*) > 100
ORDER BY median_salary DESC
LIMIT 25;