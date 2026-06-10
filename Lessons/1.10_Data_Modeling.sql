 SELECT *
 FROM information_schema.tables
 WHERE table_catalog = 'data_jobs';
 -- displays metadata about table from information_schema, default schema for this data that is read only

 PRAGMA show_tables;
 
 DESCRIBE job_postings_fact;