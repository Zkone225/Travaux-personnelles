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
	NumVol			VARCHAR(3) not null primary key,
    AeroportDept VARCHAR(3) not NULL,
	HDepart		varchar(30) not null time,
	AeroportArr VARCHAR(3) not NULL,
	Harrivee not null time
);
