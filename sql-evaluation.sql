-- Active: 1653465057205@@127.0.0.1@3306@biblio
drop database if exists biblio;
create database biblio;

use biblio;

CREATE TABLE livres (
	NL		integer primary key auto_increment,
	editeur		varchar(50),
	NO		integer not null, foreign key(NO) references oeuvres(NO)
) ENGINE InnoDB;

CREATE TABLE oeuvres(
	NO 		integer primary key auto_increment,
	titre 		varchar(150) not null,
	auteur 		varchar(100),
	annee		integer,
	genre		varchar(30)
) ENGINE InnoDB;


CREATE TABLE emprunter (
	NL		integer not null, foreign key(NL) references livres(NL),
	dateEmp		date not null,
	dureeMax	integer not null,
	dateRet 	date,
	NA		integer not null, foreign key(NA) references adherents(NA),
	primary key (NL, dateEmp),
	index(dateEmp)
) ENGINE InnoDB;

CREATE TABLE adherents (
	NA		INT PRIMARY KEY AUTO_INCREMENT,
	nom		VARCHAR(30) not null,
	prenom		VARCHAR(30),
	adr		VARCHAR(100) not null,
	tel		CHAR(10)
) ENGINE InnoDB;



INSERT INTO oeuvres VALUES 
(1,'Narcisse et Goldmund','Hermann HESSE', 1930, 'Roman'),
(2,'Bérénice','Jean RACINE', 1670, 'Théâtre'),
(3,'Prolégomènes à  toute métaphysique future','Emmanuel KANT', 1783, 'Philosophie'),
(4,'Mon coeur mis à nu','Charles BAUDELAIRE', 1887, 'Journal'),
(5,'Voyage au bout de la nuit','Louis-Ferdinand CELINE', 1932, 'Roman'),
(6,'Les possédés','Fedor DOSTOIEVSKI', 1872, 'Roman'),
(7,'Le Rouge et le Noir','STENDHAL', 1830, 'Roman'),
(8,'Alcibiade','Jacqueline de ROMILLY', 1995, 'Roman'),
(9,'Monsieur Teste','Paul VALERY', 1926, 'Roman'),
(10,'Lettres de Gourgounel','Kenneth WHITE', 1979, 'Récit'),
(11,'Lettres à un jeune poète','Rainer Maria RILKE', 1929, 'Lettre'),
(12,'Logique sans peine','Lewis CAROLL', 1887, 'Logique'),
(13,'L''éthique','Baruch SPINOZA', 1677, 'Philosophie'),
(14,'Sur le rêve','Sigmund FREUD', 1900, 'Philosophie'),
(15,'Sens et dénotation','Gottlob FREGE', 1892, 'Philosophie'),
(16,'Penser la logique','Gilbert HOTTOIS', 1989, 'Philosophie'),
(17,'Au coeur des ténèbres','Joseph CONRAD',1899, 'Roman'),
(18,'Jan Karski','Yannick HAENEL', 2009, 'Roman');

INSERT INTO adherents VALUES 
(1,'Lecoeur','Jeanette','16 rue de la République, 75010 Paris','0145279274'),
(2,'Lecoeur','Philippe','16 rue de la République, 75010 Paris','0145279274'),
(3,'Dupont','Yvan','73 rue Lamarck, 75018 Paris','0163538294'),
(4,'Mercier','Claude','155 avenue Parmentier, 75011 Paris','0136482736'),
(5,'Léger','Marc','90 avenue du Maine, 75014 Paris','0164832947'),
(6,'Martin','Laure','51 boulevard Diderot, 75012 Paris','0174693277'),
(7,'Crozier','Martine','88 rue des Portes Blanches, 75018 Paris','0146829384'),
(8,'Lebon','Clément','196 boulevard de Sebastopol, 75001 Paris','0132884739'),
(9,'Dufour','Jacques','32 rue des Alouettes, 75003 Paris','0155382940'),
(10,'Dufour','Antoine','32 rue des Alouettes, 75003 Paris','0155382940'),
(11,'Dufour','Stéphanie','32 rue des Alouettes, 75003 Paris','0155382940'),
(12,'Raymond','Carole','35 rue Oberkampf, 75011 Paris','0153829402'),
(13,'Durand','Albert','4 rue Mandar, 75002 Paris','0642374021'),
(14,'Wilson','Paul','12 rue Paul Vaillant Couturier, 92400 Montrouge','0642327407'),
(15,'Grecault','Philippe','15 rue de la Roquette, 75012 Paris','0132762983'),
(16,'Carre','Stéphane','51 boulevard Diderot, 75012 Paris','0174693277'),
(17,'Johnson','Astrid','3 rue Léon Blum, 75002 Paris','0143762947'),
(18,'Mirou','Caroline','2 square Mirabeau, 75011 Paris','0163827399'),
(19,'Espelette','Jean-Jacques','141 avenue de France, 75019 Paris','0134887264'),
(20,'Despentes','Anthony','56 boulevard de la Villette, 75019 Paris','0133889463'),
(21,'Terlu','Véronique','45 rue des Batignolles, 75020 Paris','0165998372'),
(22,'Rihour','Cécile','7 rue Montorgueil, 75002 Paris','0166894754'),
(23,'Franchet','Pierre','160 rue Montmartre, 75009 Paris','0633628549'),
(24,'Trochet','Ernest','34 rue de l''Esperance, 75008 Paris','0638295563'),
(25,'Gainard','Simon','55 rue Desnouettes, 75015 Paris','0174928934'),
(26,'Touche','Johanna','14 rue du Bac, 75006 Paris','0619384065'),
(27,'Cornu','Sylvain','22 rue Mouffetard, 75005 Paris','0184927489'),
(28,'Frederic','Cyril','15 rue du Simplon, 75018 Paris','0173625492'),
(29,'Crestard','Cedric','5 rue Doudeauville, 75018 Paris','0629485700'),
(30,'Le Bihan','Karine','170 bis rue Ordener, 75018 Paris','0638995221');

INSERT INTO livres VALUES 
(1,'GF',1),
(2,'FOLIO',2),
(3,'HACHETTE',3),
(4,'GF',4),
(5,'FOLIO',5),
(6,'FOLIO',6),
(7,'GF',7),
(8,'FOLIO',8),
(9,'HACHETTE',9),
(10,'GF',10),
(11,'HACHETTE',11),
(12,'FOLIO',12),
(13,'GF',13),
(14,'FOLIO',14),
(15,'HACHETTE',15),
(16,'HACHETTE',16),
(17,'GF',1),
(18,'FOLIO',2),
(19,'HACHETTE',2),
(20,'FOLIO',4),
(21,'GF',5),
(22,'HACHETTE',4),
(23,'HACHETTE',7),
(24,'FOLIO',8),
(25,'GF',1),
(26,'HACHETTE',10),
(27,'FOLIO',11),
(28,'FOLIO',12),
(29,'GF',1),
(30,'HACHETTE',14),
(31,'FOLIO',17),
(32,'GALLIMARD',18);

INSERT INTO emprunter VALUES 
(1,from_days(to_days(current_date)-350),21,from_days(to_days(current_date)-349),26),
(4,from_days(to_days(current_date)-323),21,from_days(to_days(current_date)-310),4),
(26,from_days(to_days(current_date)-315),21,from_days(to_days(current_date)-318),9),
(25,from_days(to_days(current_date)-311),21,from_days(to_days(current_date)-293),1),
(12,from_days(to_days(current_date)-300),21,from_days(to_days(current_date)-1290),7),
(20,from_days(to_days(current_date)-283),21,from_days(to_days(current_date)-282),27),
(10,from_days(to_days(current_date)-273),21,from_days(to_days(current_date)-250),7),
(4,from_days(to_days(current_date)-232),14,from_days(to_days(current_date)-228),12),
(24,from_days(to_days(current_date)-226),14,from_days(to_days(current_date)-220),26),
(8,from_days(to_days(current_date)-201),14,from_days(to_days(current_date)-183),13),
(6,from_days(to_days(current_date)-199),14,from_days(to_days(current_date)-194),3),
(10,from_days(to_days(current_date)-169),14,from_days(to_days(current_date)-157),8),
(1,from_days(to_days(current_date)-153),14,from_days(to_days(current_date)-142),3),
(15,from_days(to_days(current_date)-146),14,from_days(to_days(current_date)-138),10),
(1,from_days(to_days(current_date)-106),14,from_days(to_days(current_date)-101),2),
(4,from_days(to_days(current_date)-103),14,from_days(to_days(current_date)-93),5),
(18,from_days(to_days(current_date)-86),14,from_days(to_days(current_date)-79),3),
(8,from_days(to_days(current_date)-76),14,from_days(to_days(current_date)-70),18),
(2,from_days(to_days(current_date)-37),14,from_days(to_days(current_date)-28),4),
(1,from_days(to_days(current_date)-28),14,from_days(to_days(current_date)-23),1),
(3,from_days(to_days(current_date)-21),14,from_days(to_days(current_date)-17),3),
(20,from_days(to_days(current_date)-24),14,from_days(to_days(current_date)-8),9),
(21,from_days(to_days(current_date)-23),14,from_days(to_days(current_date)-11),14),
(2,from_days(to_days(current_date)-10),14, NULL,28),
(9,from_days(to_days(current_date)-10),14, NULL,28),
(14,from_days(to_days(current_date)-9),14, NULL,1),
(16,from_days(to_days(current_date)-9),14, NULL,1),
(5,from_days(to_days(current_date)-5),14, NULL,16),
(29,from_days(to_days(current_date)-395),14, NULL,27),
(11,from_days(to_days(current_date)-30),14, NULL,22),
(31,from_days(to_days(current_date)-1),14, NULL,20),
(21,from_days(to_days(current_date)-1),14, NULL,20),
(32,from_days(to_days(current_date)-1),14, NULL,20);



SELECT * FROM livres;
/* tous les livres */

SELECT * from emprunter;
/* TOUS LES EMPRUNTE */

SELECT * from adherents;
/* tous les adherents */


select * from oeuvres;
/* tous les ouvres */

UPDATE emprunter SET dateEmp=from_days(to_days(current_date)-1290) WHERE NL=12;
UPDATE emprunter SET dateRet=from_days(to_days(current_date)-300) WHERE NL=12;
UPDATE emprunter SET dateEmp=from_days(to_days(current_date)-318) WHERE NL=26;
UPDATE emprunter SET dateRet=from_days(to_days(current_date)-315) WHERE NL=26;
/* Corriger les erreurs : expliquer les corrections que vous apportez. */

SELECT titre from oeuvres,livres,emprunter where livres.NO=oeuvres.NO and livres.NL=emprunter.NL and dateRet is NULL;
/* les livres actuellement empruntés */


SELECT DISTINCT titre from oeuvres,emprunter,adherents,livres  where adherents.NA=emprunter.NA and livres.NL=emprunter.NL and livres.NO=oeuvres.NO and nom='Lecoeur' and prenom='Jeanette';
/* les livres empruntés par Jeannette Lecoeur ? Vérifier dans la réponse
qu’il n’y a pas d’homonymes. */



SELECT titre from oeuvres,livres,emprunter  where livres.NO=oeuvres.NO and livres.NL=emprunter.NL and dateEmp  BETWEEN '2021-09-01' AND  '2021-09-30';
/* tous les livres empruntés en septembre 2021 */



SELECT nom,prenom from adherents,livres,oeuvres,emprunter where adherents.NA=emprunter.NA and livres.NL=emprunter.NL and livres.NO=oeuvres.NO and auteur='Fedor DOSTOIEVSKI';
/* Tous les adhérents qui ont emprunté un livre de Fedor Dostoievski. */


INSERT INTO adherents VALUES 
(31,'Olivier','DUPOND','76 quai de la Loire, 75019 Paris','0102030405');
/* Un nouvel adhérent vient de s’inscrire : Olivier DUPOND, 76, quai de la Loire,
75019 Paris, téléphone : 0102030405 */


INSERT INTO emprunter VALUES
(23,from_days(to_days(current_date)),14,NULL,7),
(31,from_days(to_days(current_date)),14,NULL,7);
/* Martine CROZIER vient d’emprunter « Au cœur des ténèbres » que vous venez
d’ajouter et « Le rouge et le noir » chez Hachette, livre n°23. */



UPDATE emprunter set dateRet=from_days(to_days(current_date)) where NA=28;
/* M. Cyril FREDERIC ramène les livres qu’il a empruntés. */


INSERT INTO emprunter VALUES
(23,from_days(to_days(current_date)),14,NULL,28);
/* M. Cyril FREDERIC essaye d’emprunter le livre n°23 */
/* constatation :absurde */



INSERT INTO emprunter VALUES
(29,from_days(to_days(current_date)),14,NULL,28);
/* M. Cyril FREDERIC essaye d’emprunter le livre n°29 */
/* constatation:ok */


SELECT auteur FROM oeuvres WHERE titre='voyage au bout de la nuit';
/* les auteurs du titre « Voyage au bout de la nuit » */



SELECT editeur from livres,oeuvres WHERE livres.NO=oeuvres.NO and titre='Narcisse et Goldmund';
/* les ou les éditeurs du titre « Narcisse et Goldmund » */



SELECT nom,prenom FROM adherents,emprunter,livres,oeuvres WHERE adherents.NA=emprunter.NA and emprunter.NL=livres.NL and livres.NO=oeuvres.NO and emprunter.dateRet is NULL and to_days(CURRENT_DATE) > to_days(emprunter.dateEmp) + 14;
/* les adhérents actuellement en retard */




SELECT DISTINCT titre from oeuvres,emprunter,livres,adherents WHERE livres.NL=emprunter.NL and oeuvres.NO=livres.NO and emprunter.dateRet is NULL and to_days(CURRENT_DATE) > to_days(emprunter.dateEmp) + 14;
/* les livres actuellement en retard */





SELECT nom,prenom,adherents.NA,count(*),avg(to_days(current_date)-
to_days(emprunter.dateEmp) - 14) as moy_retard FROM adherents,emprunter,livres,oeuvres WHERE adherents.NA=emprunter.NA and emprunter.NL=livres.NL and livres.NO=oeuvres.NO and emprunter.dateRet is NULL and to_days(CURRENT_DATE) > to_days(emprunter.dateEmp) + 14 GROUP BY adherents.NA, nom;
/* les adhérents en retard, avec le nombre de livres en retard et la
moyenne du nombre de jours de retard. */




SELECT DISTINCT auteur, COUNT(*) FROM oeuvres,emprunter,livres WHERE oeuvres.NO=livres.NO and livres.NL=emprunter.NL GROUP BY auteur;
/* Nombre de livres empruntés par auteur. */


SELECT DISTINCT editeur, COUNT(*) FROM oeuvres,emprunter,livres WHERE oeuvres.NO=livres.NO and livres.NL=emprunter.NL GROUP BY editeur;
/* Nombre de livres empruntés par éditeur. */





SELECT DISTINCT NL,dateEmp,dateRet, (to_days(dateret)-to_days(dateEmp)) duree FROM emprunter WHERE dateRet is NOT NULL ;
SELECT AVG(to_days(dateret)-to_days(dateEmp)) FROM emprunter WHERE dateRet is NOT NULL;
/* Durée moyenne des emprunts rendus. On commencera par afficher les durées
des emprunts rendus. */



SELECT IF(to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax > 0, to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax, 0) retard, dateEmp, dateRet FROM emprunter;

SELECT AVG(IF(to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax > 0, to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax, 0)) moyenne FROM emprunter;
/* Durée moyenne des retards pour l’ensemble des emprunts. */

SELECT AVG( datediff(dateRet, dateEmp)) as Moyenne FROM emprunter WHERE datediff(dateRet,dateEmp) > dureeMax;




SELECT AVG(if(to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax > 0, to_days(IFNULL(dateRet,CURRENT_DATE)) - to_days(dateEmp) - dureeMax, 0) )moyenne FROM emprunter WHERE dateRet is NULL;
/* Durée moyenne des retards parmi les seuls retardataires */