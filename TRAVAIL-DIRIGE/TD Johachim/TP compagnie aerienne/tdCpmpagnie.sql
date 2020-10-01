-- Creation de la base de données, on va l'appeller COMPAGNIE AERIENNE
CREATE DATABASE COMPAGNIE_AERIENNE

-- Création du tableau "avion"

create table avion 
(
	NumAvion int  primary key not null auto_increment,
	TypeAvion			varchar(5) not null,
	BaseAeroport		varchar(3) not null
);

-- Nous allons alterer la table avion en faisant en sorte de notre "auto increment" commence à 100
alter TABLE avion
auto_increment = 100;

-- Création du tableau "type"
create table type 
(
	TypeAvion			varchar(5) not null primary key,
    capacite int not NULL,
	IdConstructeur		int(10) not null
);

-- Création de la table "Constructeur"
create table constructeur 
(
    IdConstructeur		int(10) not null PRIMARY KEY,
	NomConstructeur   VARCHAR (30)	
);
--  creation table aeroport
create table aeroport 
(
	IdAeroport			VARCHAR(3) not null primary key,
    NomAeroport VARCHAR(30) not NULL,
	NomVilleDesservie		varchar(30) not null
);

-- creation table vol
create table vol 
(
	NumVol			int(3) not null primary key,
    AeroportDept VARCHAR(3) not NULL,
	HDepart		time  (p)   not null,
	AeroportArr VARCHAR(3) not NULL,
	Harrivee time  (p) NOT null 
);

VOL (NumVol, AeroportDept, Hdépart, AeroportArr, HArrivée)
 NumVol numéro de vol (clé primaire, "IT" + 3 chiffres)
 AeroportDept identificateur de l’aéroport de départ (clé étrangère vers
la colonne IdAeroport de la table AEROPORT, 3 lettres)
 Hdepart heure de départ (type heure)
 AeroportArr identificateur de l’aéroport d’arrivée (clé étrangère vers
la colonne IdAeroport de la table AEROPORT, 3 lettres)
 Harrivee heure d’arrivée (type heure)
