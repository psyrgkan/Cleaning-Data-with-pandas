CREATE DATABASE IF NOT EXISTS project_3;

USE project_3;

SELECT fraudulent, COUNT(*) as total_jobs
FROM postings
GROUP BY fraudulent;

SELECT country, SUM(fraudulent) as total_fake, CAST((AVG(fraudulent)*100) AS DECIMAL(5,2)) as per_fake, COUNT(*) as total_jobs
FROM postings
GROUP BY country
ORDER BY total_fake DESC
LIMIT 10;

SELECT state, SUM(fraudulent) as total_fake, CAST((AVG(fraudulent)*100) AS DECIMAL(5,2)) as per_fake, COUNT(*) as total_jobs
FROM postings
GROUP BY state
ORDER BY total_fake DESC
LIMIT 50;

SELECT has_reqs, SUM(fraudulent) as total_fake, CAST((AVG(fraudulent)*100) AS DECIMAL(5,2)) as per_fake, COUNT(*) as total_jobs
FROM postings
GROUP BY has_reqs
ORDER BY total_fake DESC;

SELECT has_company_logo, SUM(fraudulent) as total_fake, CAST((AVG(fraudulent)*100) AS DECIMAL(5,2)) as per_fake, COUNT(*) as total_jobs
FROM postings
GROUP BY has_company_logo
ORDER BY total_fake DESC;

SELECT has_reqs, has_company_logo, SUM(fraudulent) as total_fake, CAST((AVG(fraudulent)*100) AS DECIMAL(5,2)) as per_fake, COUNT(*) as total_jobs
FROM postings
GROUP BY has_company_logo, has_reqs
ORDER BY per_fake DESC;


