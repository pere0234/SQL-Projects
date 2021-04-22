-- FileName: pere0234-Assignment2-DML.sql
-- Description: Script to populate Assignment2 database
-- CST 8215
-- Author: Daniel Pereira Castillo
-- Year: 2020
-- Last Modified: 21 Nov 2020

-- Populating province_t

INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population) 
VALUES('ON', 'Ontario', 'Toronto', 14279196);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population) 
VALUES('QC', 'Quebec', 'Quebec City', 8425996);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('NL', 'Newfoundland and Labrador', 'St. Johns', 528430);  
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('NB', 'New Brunswick', 'Fredericton', 760868);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('NS', 'Nova Scotia', 'Halifax', 957600);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('PE', 'Prince Edward Island', 'Charlottetown', 152784);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('MB', 'Manitoba', 'Winnipeg', 1343371);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('NU', 'Nunavut', 'Iqaluit', 38243);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('SK', 'Saskatchewan', 'Regina', 1168057);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('NT', 'Northwest Territories', 'Yellowknife', 44718);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('AB', 'Alberta', 'Edmonton', 4306039);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('BC', 'British Columbia', 'Victoria', 4841078);
INSERT INTO province_t( prov_code, prov_name, prov_capital, prov_population)
VALUES('YT', 'Yukon', 'Whitehorse', 38669);   

--Populating cultural_site_t

INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(01, 'Rideau Canal', 'ON',45.4, -75.683333); 
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(02, 'SGang Gwaay', 'BC', 52.095, -131.220278);
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(03, 'Red Bay Basque Whaling Station', 'NL', 51.731944, -56.425556);
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(04, 'Old Town Lunenburg', 'NS', 44.376111, -64.309167);
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(05, 'Historic Distric of Old Quebec', 'QC', 46.809444, -71.210556); 
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(06, 'Landscape of Grand-Pre', 'NS', 45.118333, -64.307222);
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(07, 'Head-Smashed-In Buffalo Jump', 'AB', 49.749444, -113.623889); 
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(08, 'L`Anse aux Meadows National Historic Site', 'NL', 51.466667, -55.616667);
INSERT INTO cultural_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(09, 'Writing on Stone/Aisinai`pi', 'AB', 49.075, -111.633056);


--Populating mixed_site_t
INSERT INTO mixed_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(10, 'Pimachiowin Aki', 'MB', 51.826417, -95.411278);
INSERT INTO mixed_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(21, 'Unreal Canyon', 'AB', 41.826417, -95.411278);
INSERT INTO mixed_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(22, 'Sample Valley', 'BC', 50.416667, -115.483333);
INSERT INTO mixed_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(23, 'False Park', 'NL', 47.631944, -52.190278);
INSERT INTO mixed_site_t( site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(24, 'Spurious Mountain', 'AB', 49.5698, -110.177256);

--Populating natural_site_t
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(11, 'Mistaken Point', 'NL', 46.631944, -53.190278);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(12, 'Waterton Glacier International Peace Park', 'AB', 49, -113.9);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(13, 'Wood Buffalo National Park', 'AB', 59.366667, -112.3);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(14, 'Canadian Rocky Mountain Parks', 'BC', 51.416667, -116.483333);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(15, 'Dinosaur Provincial Park', 'AB', 50.767778, -111.492222);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(16, 'Gros Morne National Park', 'NL', 49.616667, -57.533333);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(17, 'Nahanni National Park', 'NT', 61.55, -125.583333);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(18, 'Kluane/Wrangell-St.Elias/Glacier Bay/Tatshenshini-Alsek', 'YT', 61.2, -141.0);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(19, 'Joggins Fossil Cliffs', 'NS', 45.709722, -64.435833);
INSERT INTO natural_site_t(site_id, site_name, site_prov, site_latitude, site_longitude)
VALUES(20, 'Miguasha National Park', 'QC', 48.105, -66.353056);
 

--eof: pere0234-Assignment2-DML.sql


