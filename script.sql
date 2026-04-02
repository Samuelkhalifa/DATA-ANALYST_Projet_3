-- SETUP ENVIRONNEMENT DB
CREATE DATABASE moviesdb;
USE moviesdb;
DROP TABLE IF EXISTS movies;


-- CREATION DE LA TABLE movies
CREATE TABLE movies (
    id INT NOT NULL,
    title VARCHAR(1000) NOT NULL,
    vote_average DECIMAL(5,3) NULL,
    vote_count INT NULL,
    status VARCHAR(50) NULL,
    release_date DATETIME NULL,
    revenue BIGINT NULL,
    runtime INT NULL,
    adult VARCHAR(10) NULL,
    -- backdrop_path VARCHAR(255),
    budget BIGINT NULL,
    -- homepage TEXT,
    -- imdb_id VARCHAR(20),
    original_language VARCHAR(10) NULL,
    original_title VARCHAR(255) NULL,
    overview TEXT NULL,
    popularity DECIMAL(10,5) NULL,
    -- tagline VARCHAR(255) NULL,
    genres VARCHAR(255) NULL,
    production_companies VARCHAR(1000) NULL,
    production_countries TEXT NULL
    -- spoken_languages VARCHAR(255) NULL,
    -- keywords TEXT
);

-- IMPORT MANUEL DES DONNES CSV
LOAD DATA INFILE "/Users/samuelkhalifa/Desktop/data_analyst/PROJETS/Projet3/movie_dataset_cleaned.csv"
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


-- REQUETES
SELECT * FROM moviesdb.movies;


-- CREATION D'UN USER MYSQL POUR CONNECTION AVEC POWER BI SUR MACHINE VIRTUELLE
CREATE USER 'xxx'@'%' IDENTIFIED BY 'xxx';
GRANT ALL PRIVILEGES ON moviesdb.* TO 'xxx'@'%';
FLUSH PRIVILEGES;



