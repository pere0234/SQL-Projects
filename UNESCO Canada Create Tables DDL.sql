-- FileName: pere0234-Assignment2-DDL.sql
-- Description: Script to create Assignment2 database, create TABLEs
-- CST 8215
-- Author: Daniel Pereira Castillo
-- Year: 2020
-- Last Modified: 21 Nov 2020


DROP VIEW IF EXISTS NaturalSites_BC_V;
DROP MATERIALIZED VIEW IF EXISTS CulturalSites_NS; 
DROP TABLE IF EXISTS mixed_site_t;
DROP TABLE IF EXISTS natural_site_t;
DROP TABLE IF EXISTS cultural_site_t;
DROP TABLE IF EXISTS province_t;

CREATE TABLE province_t
(
  prov_code character(2) NOT NULL,
  prov_name character varying(30) NOT NULL,
  prov_capital character varying(30),
  prov_population bigint,
  CONSTRAINT prov_code_pk PRIMARY KEY (prov_code)
);

CREATE TABLE cultural_site_t
(
  site_id integer NOT NULL,
  site_name character varying(45) NOT NULL,
  site_prov character(2),
  site_latitude float,
  site_longitude float, 
  CONSTRAINT c_site_id_pk PRIMARY KEY(site_id),
  CONSTRAINT fk_site_prov FOREIGN KEY (site_prov)
	REFERENCES province_t (prov_code)
	
);

CREATE TABLE natural_site_t
(
  site_id integer NOT NULL,
  site_name character varying(60) NOT NULL,
  site_prov character(2),
  site_latitude float,
  site_longitude float, 
  CONSTRAINT n_site_id_pk PRIMARY KEY(site_id),
  CONSTRAINT fk_site_prov FOREIGN KEY (site_prov)
	REFERENCES province_t (prov_code)
);
CREATE TABLE mixed_site_t
(
  site_id integer NOT NULL,
  site_name character varying(30) NOT NULL,
  site_prov character(2),
  site_latitude float,
  site_longitude float, 
  CONSTRAINT m_site_id_pk PRIMARY KEY(site_id),
  CONSTRAINT fk_site_prov FOREIGN KEY (site_prov)
	REFERENCES province_t (prov_code)
);
--eof: pere0234-Assignment2-DDL.sql
