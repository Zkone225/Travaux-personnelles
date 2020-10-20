-- TP d'équipe (Mirna)

-- creation base de données
CREATE DATABASE if not EXISTS librairie 

-- creation tables
-- tables sans foreign key
CREATE TABLE auteur(
	id_auteur AUTO_INCREMENT	int(5)   PRIMARY KEY,
	nom_auteur			varchar(30) not null,
	prenom_auteur       varchar(30) not null,
    pays_auteur         varchar(20) not null,
    ville_auteur		varchar(30) not null
);

CREATE TABLE editeur(
	id_editeur AUTO_INCREMENT	int(5)  , PRIMARY KEY,
	nom_editeur			varchar(30) not null,
    pays_editeur         varchar(30) not null,
    
);

CREATE TABLE theme(
	id_theme  AUTO_INCREMENT	int(5)  , PRIMARY KEY,
	libelle_theme			varchar(30) not null,
    
);

CREATE TABLE rayon(
	id_rayon  AUTO_INCREMENT	int(5)  , PRIMARY KEY,
	libelle_rayon			varchar(30) not null,
    
);

CREATE TABLE utilisateur(
	id_Ut  AUTO_INCREMENT	int(5)  , PRIMARY KEY,
    email_Ut         varchar(60) not null,
    mdp_Ut		varchar(30) not null,
    Type_Ut  varchar(10) not null
);

-- tables avec foreign key

CREATE TABLE editer(
	contrat_edition 	varchar(15) NOT NULL ,
	FOREIGN KEY id_editeur (id_editeur) REFERENCES editeur(id_editeur);
    FOREIGN KEY id_auteur (id_auteur) REFERENCES auteur(id_auteur);
);

CREATE TABLE livre(
    id_li AUTO_INCREMENT int(5) PRIMARY KEY,
    Titre_li VARCHAR(30) NOT NULL,
    Ss_titre_li VARCHAR(30) ,
    date_pub_li int(10) NOT NULL,
    Resume_li text(200) NOT NULL,
    Num_isbn INT(5) NOT NULL,
    prix_li INT(5), NOT NULL,
	contrat_edition 	varchar(15) NOT NULL ,
	FOREIGN KEY id_editeur (id_editeur) REFERENCES editeur(id_editeur);
    FOREIGN KEY id_auteur (id_auteur) REFERENCES auteur(id_auteur),
    FOREIGN KEY id_Ra (id_Ra) REFERENCES rayon(id_Ra),
    FOREIGN KEY id_theme (id_theme) REFERENCES theme(id_theme)
);

CREATE TABLE commentaire(
	contrat_edition 	varchar(15) NOT NULL ,
	FOREIGN KEY id_editeur (id_editeur) REFERENCES editeur(id_editeur);
    FOREIGN KEY id_auteur (id_auteur) REFERENCES auteur(id_auteur);
);


