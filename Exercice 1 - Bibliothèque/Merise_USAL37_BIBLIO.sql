-- Sélectionner la base de données
USE usal37_biblio;

-- Création de la table book
CREATE TABLE book
(
	book_id INT NOT NULL,
    book_title VARCHAR(50) NOT NULL,
    book_editor VARCHAR(50) NOT NULL,
    book_buy_date DATE,
    book_state VARCHAR(50) NOT NULL,
    book_authors VARCHAR(255) NOT NULL,
    PRIMARY KEY (book_id)
);

-- Création de la table client
CREATE TABLE client
(
	client_id INT NOT NULL,
    client_lastname VARCHAR(50) NOT NULL,
    client_firstname VARCHAR(50) NOT NULL,
    client_address VARCHAR(255),
    client_deposit SMALLINT NOT NULL,
    PRIMARY KEY (client_id)
);

-- Création de la table borrow
CREATE TABLE borrow
(
	borrow_id INT NOT NULL,
    borrow_date VARCHAR(50) NOT NULL,
    borrow_return VARCHAR(50) NULL,
    PRIMARY KEY (borrow_id)
);



