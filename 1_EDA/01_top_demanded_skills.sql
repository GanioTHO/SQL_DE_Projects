/*
What are the most in demand skills for Data Engineer?
- Top 10 skills in demand
- Remote job postings
- Poland only
- Data Engineer role

*/


SELECT
    sd.type,
    sd.skills,
    COUNT(sd.skills) AS amount
FROM job_postings_fact AS jpf
INNER JOIN skills_job_dim AS sjd
    ON sjd.job_id = jpf.job_id
INNER JOIN skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
WHERE (jpf.job_country = 'Poland') AND (job_work_from_home) AND (jpf.job_title_short = 'Data Engineer')
GROUP BY sd.type, sd.skills
ORDER BY amount DESC
LIMIT 10;

/*
┌─────────────┬────────────┬────────┐
│    type     │   skills   │ amount │
│   varchar   │  varchar   │ int64  │
├─────────────┼────────────┼────────┤
│ programming │ python     │    977 │
│ programming │ sql        │    928 │
│ cloud       │ aws        │    583 │
│ cloud       │ azure      │    575 │
│ libraries   │ spark      │    535 │
│ libraries   │ airflow    │    406 │
│ cloud       │ snowflake  │    339 │
│ cloud       │ gcp        │    324 │
│ cloud       │ databricks │    285 │
│ programming │ scala      │    270 │
└─────────────┴────────────┴────────┘
*/
