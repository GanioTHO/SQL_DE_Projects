SELECT
    job_country,
    ROUND(MEDIAN(salary_year_avg), 1) as median_salary,
    count(*) as listing_amt,
    job_title
FROM
    job_postings_fact AS jpf
WHERE
    (job_work_from_home) AND
    (job_title LIKE '%Data Engineer%') AND
    (salary_year_avg IS NOT NULL) AND
    (job_country = 'United Kingdom')
GROUP BY 
    job_title, job_country
ORDER BY 
    median_salary desc
LIMIT 25;