CREATE DATABASE ArtifactManagement;

USE ArtifactManagement;

CREATE TABLE Roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(255) NOT NULL
);

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES Roles(role_id)
);

CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    bio TEXT,
    contact_info VARCHAR(255)
);

CREATE TABLE Artifacts (
    artifact_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    auction_end_date DATETIME NOT NULL,
    artist_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Auctions (
    auction_id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    artifact_id INT NOT NULL,
    FOREIGN KEY (artifact_id) REFERENCES Artifacts(artifact_id)
);

CREATE TABLE Bids (
    bid_id INT AUTO_INCREMENT PRIMARY KEY,
    bid_amount DECIMAL(10, 2) NOT NULL,
    bid_timestamp DATETIME NOT NULL,
    bidder_id INT NOT NULL,
    artifact_id INT NOT NULL,
    FOREIGN KEY (bidder_id) REFERENCES Users(user_id),
    FOREIGN KEY (artifact_id) REFERENCES Artifacts(artifact_id)
);

ALTER TABLE Users
ADD COLUMN full_name VARCHAR(255);

DROP TABLE IF EXISTS Bids;

DROP TABLE IF EXISTS Auctions;

DROP TABLE IF EXISTS Artifacts;

DROP TABLE IF EXISTS Artists;

DROP TABLE IF EXISTS Users;

DROP TABLE IF EXISTS Categories;

DROP TABLE IF EXISTS Roles;

