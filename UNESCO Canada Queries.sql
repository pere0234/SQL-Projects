-- FileName: pere0234-Assignment2-Queries.sql
-- Description: Script to test various queries for Assignment2
-- CST 8215
-- Author: Daniel Pereira Castillo
-- Year: 2020
-- Last Modified: 21 Nov 2020

-- Metadata
SELECT * from information_schema.columns WHERE table_name = 'province_t';
SELECT * from information_schema.columns WHERE table_name = 'cultural_site_t';
SELECT * from information_schema.columns WHERE table_name = 'mixed_site_t';
SELECT * from information_schema.columns WHERE table_name = 'natural_site_t';

-- SELECT statements
SELECT * FROM cultural_site_t WHERE site_prov = 'ON';
SELECT * FROM mixed_site_t WHERE site_prov = 'MB';
SELECT * FROM natural_site_t WHERE site_prov = 'AB';

--JOINs
--Shows provinces with/without cultural UNESCO sites
SELECT site_id, site_name, province_t.prov_name
FROM cultural_site_t
RIGHT OUTER JOIN province_t
ON province_t.prov_code = cultural_site_t.site_prov;

--Shows provinces with natural UNESCO sites
SELECT site_id, site_name, province_t.prov_code
FROM natural_site_t
LEFT OUTER JOIN province_t
ON province_t.prov_code = natural_site_t.site_prov;

--SUBQUERIES
--See the provinces where population is more than the average pop of all provinces
SELECT prov_code, prov_name, prov_population
FROM province_t
WHERE prov_population > (SELECT AVG(prov_population) FROM province_t);


--See the number of cultural sites per province
SELECT prov_name, prov_code, COUNT(prov_code) AS "Number of Cultural Sites"
FROM province_t
NATURAL JOIN cultural_site_t
WHERE province_t.prov_code = cultural_site_t.site_prov
GROUP BY province_t.prov_code 
ORDER BY province_t.prov_name ASC;

--UNION
--See all cultural and natural sites 
SELECT site_id, site_name, province_t.prov_code
FROM cultural_site_t
RIGHT JOIN province_t
ON province_t.prov_code = cultural_site_t.site_prov
UNION
SELECT site_id, site_name, province_t.prov_code
FROM natural_site_t
LEFT JOIN province_t
ON province_t.prov_code = natural_site_t.site_prov
ORDER BY site_id;

--VIEWs
CREATE VIEW NaturalSites_BC_V AS
SELECT * FROM natural_site_t
WHERE site_prov = 'BC';

CREATE MATERIALIZED VIEW CulturalSites_NS AS
SELECT * FROM cultural_site_t
WHERE site_prov = 'NS';

--Information Schema

SELECT * FROM INFORMATION_SCHEMA.TABLES;

SELECT column_name, data_type, character_maximum_length FROM INFORMATION_SCHEMA.COLUMNS WHERE 
TABLE_NAME  = 'province_t' OR
TABLE_NAME = 'cultural_site_t' OR
TABLE_NAME = 'mixed_site_t' OR
TABLE_NAME = 'natural_site_t';

--eof: pere0234-Assignment2-Queries.sql
