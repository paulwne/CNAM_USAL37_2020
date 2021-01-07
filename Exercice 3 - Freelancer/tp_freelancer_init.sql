DROP DATABASE IF EXISTS usal37_freelancer;

CREATE DATABASE usal37_freelancer DEFAULT CHARACTER SET 'utf8mb4_unicode_ci';

USE usal37_freelancer;

CREATE TABLE customers 
(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(255)
);

CREATE TABLE customers_cats
(
	cat_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_name VARCHAR(50) NOT NULL,
    cat_description TEXT NOT NULL
);

CREATE TABLE quotes 
(
	quotes_id INT PRIMARY KEY AUTO_INCREMENT,
    quote_state CHAR(10) NOT NULL,
    quote_date DATE NOT NULL,
    quote_amount INT AUTO_INCREMENT,
    quote_final_date DATE NOT NULL,
    quote_final_amount INT AUTO_INCREMENT
);

CREATE TABLE jobs
(
	job_id INT PRIMARY KEY AUTO_INCREMENT,
    job_state CHAR(10) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    job_start DATETIME NOT NULL,
    job_end DATETIME NOT NULL,
    job_description TEXT
);

ALTER TABLE customers 
ADD 
	CONSTRAINT fk_customers_customers_cats FOREIGN KEY (cat_id) REFERENCES customers_cats (cat_id);

ALTER TABLE jobs
ADD 
	CONSTRAINT fk_jobs_quotes FOREIGN KEY (quote_id) REFERENCES quotes(quote_id);
    
ALTER TABLE customers
ADD
		CONSTRAINT fk_customers_jobs FOREIGN KEY (job_id) REFERENCES jobs (job_id);