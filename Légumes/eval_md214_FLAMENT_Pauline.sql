DROP DATABASE IF EXISTS usal37_legumos;

CREATE DATABASE IF NOT EXISTS usal37_legumos DEFAULT CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

USE usal37_legumos;

CREATE TABLE Vegetables
(
   Id INT,
   Name VARCHAR(50) NOT NULL UNIQUE,
   Variety VARCHAR(50) NOT NULL,
   PrimaryColor VARCHAR(20) NOT NULL,
   LifeTime INT NOT NULL,
   Fresh INT NOT NULL,
   PRIMARY KEY(Id)
);

CREATE TABLE Sales
(
   SaleId INT,
   SaleDate DATE NOT NULL,
   SaleWeight INT NOT NULL,
   SaleUnitPrice DECIMAL(5,2) NOT NULL,
   SaleActive INT NOT NULL,
   Id INT NOT NULL,
   PRIMARY KEY(SaleId),
   FOREIGN KEY(Id) REFERENCES Vegetables(Id)
);

INSERT INTO Vegetables
	(Id, Name, Variety, PrimaryColor, LifeTime, Fresh) 
VALUES 
	(101, "Chicon", "Atlas", "Blanc", 6, 1),
	(111, "Topinambour", "Le rouge du Limousin", "Rouge", 7, 1),
	(121, "Patate douce", "Evangeline", "Orange", 10, 0),
	(131, "Salade", "Roquette", "Vert", 2, 1),
	(141, "Carotte", "Purple Dragon", "Pourpre", 3, 0),
	(151, "Epinard", "Butterfly", "Vert", 2, 1),
	(161, "Asperge", "Rapsody", "Blanc", 3, 0),
	(171, "Courgette", "Gold Rush", "Vert", 7, 1),
	(181, "Potiron", "Bleu de Hongrie", "Bleu", 5, 0),
	(191, "Brocolis", "Chinois", "Vert", 5, 0),
	(201, "Choux de Bruxelles", "Mallard", "Vert", 7, 0),
	(211, "Poivron", "Pepper Mont Jolien", "Rouge", 8, 0),
	(221, "Lentilles", "Corail", "Corail", 6, 0),
	(231, "Aubergine", "Black Beauty", "Noir", 5, 0),
	(241, "Navet", "Montesson", "Violet", 4, 0),
	(251, "Poireau", "Bleu de Solaise", "Vert", 10, 0),
	(261, "Radis", "Angelus", "Blanc", 5, 1),
	(271, "Haricots", "Amethyst", "Violet", 4, 0),
	(281, "Betterave", "Chioggia", "Rouge", 5, 1),
	(291, "Concombre", "Hollandais", "Vert", 8, 1);

INSERT INTO Sales
	(SaleId, SaleDate, SaleWeight, SaleUnitPrice, SaleActive, Id) 
VALUES 
	(1234, "2020-01-10", 3, 2.40, 1, 101), 
	(2345, "2020-10-19", 5, 4.60, 1, 141), 
	(3456, "2020-09-13", 8, 7.50, 0, 161), 
	(4567, "2020-05-20", 4, 3.90, 0, 191), 
	(5678, "2020-03-07", 1, 1.80, 1, 211), 
	(6789, "2021-02-22", 7, 5.60, 0, 231), 
	(7890, "2020-12-11", 2, 1.50, 1, 241), 
	(8901, "2021-01-24", 6, 2.40, 1, 261), 
	(9012, "2020-07-17", 9, 5.75, 0, 281), 
	(9123, "2020-06-09", 4, 4.80, 1, 291);

SELECT Vegetables.Id, Name, SaleId, SaleDate, SaleWeight, SaleUnitPrice, SaleActive
FROM Sales
JOIN Vegetables ON Sales.Id = Vegetables.Id








