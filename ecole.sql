CREATE DATABASE ecole;

CREATE USER 'ebele'@'localhost' IDENTIFIED BY 'somepassword';

GRANT ALL PRIVILEGES ON * . * TO 'ebele'@'localhost';

mysql> FLUSH PRIVILEGES;

USE ecole;



CREATE TABLE client (
    id_client INT AUTO_INCREMENT, 
    nom VARCHAR(100) NOT NULL, 
    prenom VARCHAR(100), 
    adresse VARCHAR(100) NOT NULL, 
    ville VARCHAR(100) NOT NULL, 
    PRIMARY KEY(id_client)
    );



CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT, 
    marque VARCHAR(100) NOT NULL, 
    logo VARCHAR(100) NOT NULL, 
    PRIMARY KEY(id_marque)
    );


CREATE TABLE chaussure (
    id_chaussure INT AUTO_INCREMENT, 
    couleure VARCHAR(100) NOT NULL, 
    marque VARCHAR(100) NOT NULL, 
    taille INT NOT NULL, 
    prix INT NOT NULL, 
    nom_chaussure VARCHAR(100) NOT NULL, 
    PRIMARY KEY(id_chaussure)
    );


CREATE TABLE commande (
    id_commande INT AUTO_INCREMENT, 
    id_client INT NOT NULL, 
    date INT NOT NULL, 
    PRIMARY KEY(id_commande)
    );

CREATE TABLE liste_de_produit (
    id_commande INT AUTO_INCREMENT, 
    id_chaussure INT NOT NULL, 
    quantite INT NOT NULL, 
    PRIMARY KEY(id_commande)
    );
























