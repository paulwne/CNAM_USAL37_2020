-- SQL
-- DDL (CREATE DROP ALTER)
-- DML (INSERT UPDATE DELETE)
-- DQL (SELECT)

DROP DATABASE IF EXISTS usal37_agence;

CREATE DATABASE usal37_agence DEFAULT CHARACTER SET 'utf8';

USE usal37_agence;


CREATE TABLE countries 
(
	country_code CHAR(2) PRIMARY KEY,
    country_name VARCHAR(128) NOT NULL
);

CREATE TABLE cities
(
	city_code INT AUTO_INCREMENT,
    city_name VARCHAR(128) NOT NULL,
    country_code CHAR(2) NOT NULL,
    PRIMARY KEY (city_code)
);

CREATE TABLE trips 
(
	trip_code INT PRIMARY KEY AUTO_INCREMENT,
    trip_title VARCHAR(128) NOT NULL,
    trip_available INT NOT NULL,
    trip_start DATETIME NOT NULL,
    trip_end DATETIME NOT NULL,
    trip_price DECIMAL(7,2) NOT NULL,
    trip_overview TEXT NOT NULL,
    trip_description MEDIUMTEXT NULL,
    city_code INT NOT NULL
);

/*
TINYINT    = 255 valeurs (-128 à +127)
SMALLINT   = 65535 valeurs (-32000 à +32000)
MEDIUMINT  = 16 millions de valeurs (-800000 à +800000)
INT 	   = 4 milliards de valeurs (-2 milliards à + 2 millliards)
BIGINT     = 2^63 valeurs possibles (-2^63 à +2^64-1)

TINYTEXT   = 255 caractères max    		- 0.25 ko 
TEXT       = 65535 caractères max 		- 64 ko 
MEDIUMTEXT = 16 millions caractères max - 16 mo
LONGTEXT   = 4 milliards caractères max - 4 go
*/
/*
ALTER TABLE cities 
ADD 
FOREIGN KEY (country_code) REFERENCES countries(country_code);
*/

/* Modification de la table cities (ALTER)
 * Ajout d'une contrainte de clé étrangère */ 
ALTER TABLE cities 
ADD 
	CONSTRAINT fk_cities_countries FOREIGN KEY (country_code) REFERENCES countries(country_code);

ALTER TABLE trips 
ADD 
	CONSTRAINT fk_trips_cities FOREIGN KEY (city_code) REFERENCES cities(city_code);


/* INSERTION DU JEU D'ESSAI */

INSERT INTO countries
(country_code, country_name) 
VALUES 
('FR', 'France'), 
('DE', 'Allemagne'),
('IT', 'Italie'),
('MA', 'Maroc');

INSERT INTO cities
(city_name, country_code) 
VALUES 
('Paris', 'FR'),
('Berlin', 'DE'),
('Milan', 'IT'),
('Rome', 'IT');





