/*
1) 	Créer la table "sales" (commerciaux) et ajouter 5 commerciaux
2) 	Créer la table "clients" et ajouter 5 clients dans la table
	Chaque client est associé à un commercial différent 
    
3) 	Sélectionnez tous les clients (nom du commercial associé inclus)
*/

USE usal37_agence;

CREATE TABLE sales
(
	com_code INT PRIMARY KEY,
    com_name VARCHAR(32) NOT NULL,
    com_password VARCHAR(60)
);

INSERT INTO sales
(com_code, com_name)
VALUES
('1', 'DUPOND'),
('2', 'MICHEL'),
('3', 'PETIT'),
('4', 'ALAIN'),
('5', 'LENINGER');

CREATE TABLE clients
(
	client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_lastname VARCHAR(32) NOT NULL,
    client_firstname VARCHAR(32) NOT NULL,
    client_email VARCHAR(128),
    client_phone VARCHAR(16),
    client_added DATE,
    client_password VARCHAR(60)
);

INSERT INTO clients
(client_lastname, client_firstname)
VALUES
('Da Silva', 'Tonio'),
('Adam', 'Mathilde'),
('Breton', 'Sarah'),
('Laporte', 'Denis'),
('Charpentier', 'Emma');

ALTER TABLE sales
	ADD FOREIGN KEY(client_code) REFERENCES sales(client_code);

select * from sales;

SELECT
client_id, client_lastname, client_firstname, client_email, client_phone, client_added, client_password
