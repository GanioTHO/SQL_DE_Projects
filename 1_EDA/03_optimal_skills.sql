SELECT
    sd.skills,
    ROUND(MEDIAN(jpf.salary_year_avg), 0) as median_salary,
    COUNT(jpf.*) AS demand_count,
    ROUND(ROUND(MEDIAN(jpf.salary_year_avg), 0) * LN(COUNT(jpf.*)) / 1_000_000, 2) as sum
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
    ON sjd.job_id = jpf.job_id
INNER JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
WHERE (job_work_from_home) AND (jpf.job_title_short = 'Data Engineer')
GROUP BY sd.skills
HAVING COUNT(jpf.*) > 100
ORDER BY sum DESC
LIMIT 25;