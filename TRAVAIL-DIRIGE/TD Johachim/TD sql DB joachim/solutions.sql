-- TRAVAUX DIRIGES LUNDI 28/09/20 (JOHACHIM)

-- Exercice 1 :
-- Afficher le nom, la ville et la région de tous les éditeurs.
select NomEditeur, ville, region
from editeur;

-- Exercice 2 : LIKE, BETWEEN, AND
-- Afficher le nom, le prénom, et la date d’embauche des employés embauchés en 90, dont le nom
-- commence par ‘L’, et la position est comprise entre 10 et 100.
SELECT NomEmploye, PnEmploye, DateEmbauche
from employe 
where DateEmbauche LIKE "%1990%" AND  NomEmploye LIKE "l%" AND PositionEmploye BETWEEN 10 AND 100;

-- Exercice 3 : ORDER BY
-- Afficher le nom et la date d’embauche des employés, classés par leur identificateur d’éditeur,
-- puis par leur nom de famille (sous-critère)
SELECT employe.NomEmploye, employe.DateEmbauche, employe.IdEditeur 
FROM employe 
ORDER BY `employe`.`IdEditeur` ASC

-- Exercice 4 : IN, ORDER BY
-- Afficher le nom, le pays et l’adresse des auteurs Français, Suisse ou Belge, classés par pays.
SELECT Pays, NomAuteur, adresse
from auteur
where Pays IN("FR", "CH", "BE")
ORDER BY Pays;

-- Exercice 5 : GROUP BY, COUNT, MIN, MAX
-- Pour chaque niveau d’emploi (table employés, colonne positionEmploye) affichez le nombre d’employés de ce
-- niveau, la date d’embauche du salarié le plus ancien et du plus récent dans le niveau
SELECT Count(IdEmploye), positionEmploye,
 MAX(DateEmbauche), MIN(DateEmbauche)
 FROM employe 
 GROUP BY PositionEmploye 

--  Exercice 6 : GROUP BY, MAX
-- Pour chaque Identificateur de titre, calculer les droits prévus maximum ( table droitsprevus, colonne droits)
SELECT distinct IdTitre, max(droit) "droits maximum" 
FROM droitprevu 
GROUP BY IdTitre 









