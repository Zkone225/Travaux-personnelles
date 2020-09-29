create table monument 
(
	id_monument 	int(5) auto_increment primary key not null,
	nom			varchar(255) not null,
	arrondissement		varchar(255) not null,
	adresse		varchar(255) not null,
	site_web			varchar(255) not null,
    fk_id_type_monument
    
);
