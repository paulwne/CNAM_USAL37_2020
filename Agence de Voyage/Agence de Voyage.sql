DROP DATABASE IF EXISTS usal37_agence;

CREATE DATABASE usal37_agence DEFAULT CHARACTER SET 'utf8';

USE usal37_agence;

CREATE TABLE countries
(
	country_code CHAR(2) PRIMARY KEY,
    country_name VARCHAR(128) NOT NULL
) ;

CREATE TABLE cities
(
	city_code INT AUTO_INCREMENT,
    city_name VARCHAR(128) NOT NULL,
    country_code CHAR(2) NULL,
    PRIMARY KEY (city_code),
    FOREIGN KEY (country_code) REFERENCES countries(country_code)
);

-- contraintes de clés étrangères --

INSERT INTO countries
(country_code, country_name)
VALUES
('FR', 'FRANCE'),
('DE', 'ALLEMAGNE');

INSERT INTO cities
(city_name, country_code)
VALUES
('Paris', 'FR'),
('Berlin', 'DE');
