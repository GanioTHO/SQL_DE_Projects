SELECT
    job_country,
    ROUND(MEDIAN(salary_year_avg), 1) as median_salary,
    COUNT(*) AS number_of_jobs
FROM
    job_postings_fact AS jpf
WHERE
    (job_work_from_home) AND
    (job_title LIKE '%Data Engineer%') AND
    (salary_year_avg IS NOT NULL)
GROUP BY job_country
HAVING COUNT(*) >= 15
ORDER BY median_salary desc;