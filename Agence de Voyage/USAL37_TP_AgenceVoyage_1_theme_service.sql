DROP DATABASE IF EXISTS usal37_agence;

CREATE DATABASE usal37_agence DEFAULT CHARACTER SET 'utf8';

USE usal37_agence;

CREATE TABLE themes
(
theme_code INT PRIMARY KEY AUTO_INCREMENT,
theme_name VARCHAR(32) NOT NULL,
theme_description MEDIUMTEXT
);

CREATE TABLE services
(
service_code INT PRIMARY KEY AUTO_INCREMENT,
service_name VARCHAR(32) NOT NULL,
service_description MEDIUMTEXT NULL,
service_score CHAR(32)NOT NULL,
service_commentaire VARCHAR(255)
);

