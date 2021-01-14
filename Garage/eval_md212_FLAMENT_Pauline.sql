DROP DATABASE IF EXISTS tp_garage;

CREATE DATABASE tp_garage DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE tp_garage;

CREATE TABLE clients
(
	client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_lastname VARCHAR(50) NULL,
    client_firstname VARCHAR(50) NULL,
    client_address INT NOT NULL
);

CREATE TABLE mechanics
(
	mechanic_id INT PRIMARY KEY AUTO_INCREMENT,
    mechanic_lastname VARCHAR(50) NOT NULL,
    mechanic_firstname VARCHAR(50) NOT NULL
);

CREATE TABLE reparations
(
	reparation_id INT PRIMARY KEY AUTO_INCREMENT,
    reparation_date DATETIME NULL,
    reparation_hour TIME NULL,
    reparation_price DECIMAL (6,2) NULL,
    reparation_type VARCHAR (50),
    reparation_quantity VARCHAR (3) NULL
);

CREATE TABLE garages
(
	garage_name INT PRIMARY KEY,
    garage_address VARCHAR(255) NULL
);


ALTER TABLE clients
ADD 
	CONSTRAINT fk_reparations FOREIGN KEY (reparation_id) REFERENCES reparations (reparations_id);

ALTER TABLE reparations
ADD
	CONSTRAINT fk_clients_reparations FOREIGN KEY (client_id) REFERENCES clients (client_id);

ALTER TABLE mechanics
ADD 
	CONSTRAINT fk_mechanic_reparation FOREIGN KEY (mechanic_id) REFERENCES mechanics (mechanic_id);