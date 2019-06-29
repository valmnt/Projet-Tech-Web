-- creation de table

DROP TABLE COMPETENCE_EXPERIENCE;
DROP TABLE COMPETENCE_FORMATION;
DROP TABLE  PASSIONS;
DROP TABLE COMPETENCE;
DROP TABLE INFOPERSO;
DROP TABLE EXPERIENCE;
DROP TABLE FORMATION;
DROP TABLE CONTACT;
DROP TABLE STRUCTURES;

CREATE TABLE INFOPERSO(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(30) NOT NULL,
FIRSTNAME VARCHAR(30) NOT NULL,
BIRTHDAY DATE NOT NULL,
MAIL VARCHAR(60)NULL,
ADRESSE VARCHAR(100) NOT NULL,
TELEPHONE DECIMAL NOT NULL,
CONSTRAINT infoperso_pk PRIMARY KEY(ID)
)ENGINE = InnoDB;

CREATE TABLE STRUCTURES(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
VILLE VARCHAR(60) NOT NULL,
CODEPOSTAL VARCHAR(10) NOT NULL,
CONSTRAINT structures_pk PRIMARY KEY(ID)
)ENGINE = InnoDB;


CREATE TABLE COMPETENCE(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
NIVEAU VARCHAR(30) NOT NULL,
DOMAINE VARCHAR(60) NOT NULL,
IDINFOS SMALLINT NOT NULL,
CONSTRAINT competence_pk PRIMARY KEY(ID),
CONSTRAINT comp_fk_infos FOREIGN KEY(IDINFOS) REFERENCES INFOPERSO(ID)
)ENGINE = InnoDB;

CREATE TABLE FORMATION(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
DATEDEBUT DATE NOT NULL,
DATEFIN DATE NOT NULL,
ID_STRUCTURES SMALLINT NOT NULL,
CONSTRAINT fromation_pk PRIMARY KEY(ID),
CONSTRAINT fromation_fk_structures FOREIGN KEY(ID_STRUCTURES) REFERENCES STRUCTURES(ID)
)ENGINE = InnoDB;


CREATE TABLE EXPERIENCE(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(30) NOT NULL,
DUREEJOUR VARCHAR(5) NOT NULL,
IDSTRUCTURES SMALLINT NOT NULL,
CONSTRAINT experience_pk PRIMARY KEY(ID),
CONSTRAINT experience_fk_structures FOREIGN KEY(IDSTRUCTURES) REFERENCES STRUCTURES(ID)
)ENGINE = InnoDB;

CREATE TABLE PASSIONS(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
IDINFO SMALLINT NOT NULL,
CONSTRAINT pass_pk PRIMARY KEY(ID),
CONSTRAINT pass_fk_info FOREIGN KEY(IDINFO) REFERENCES INFOPERSO(ID)
)ENGINE = InnoDB;

CREATE TABLE CONTACT(
ID SMALLINT NOT NULL AUTO_INCREMENT,
NOM VARCHAR(60) NOT NULL,
MAIL VARCHAR(100) NOT NULL,
CONSTRAINT contact_pk PRIMARY KEY(ID)
)ENGINE = InnoDB;

CREATE TABLE COMPETENCE_FORMATION(
IDFORMATION SMALLINT NOT NULL,
IDCOMPETENCE SMALLINT NOT NULL,
CONSTRAINT competence_formation_pk PRIMARY KEY (IDFORMATION, IDCOMPETENCE),
CONSTRAINT competence_formation_idforma FOREIGN KEY(IDFORMATION) REFERENCES FORMATION(ID),
CONSTRAINT competence_formation_idcomp FOREIGN KEY(IDCOMPETENCE) REFERENCES COMPETENCE(ID)
)ENGINE = InnoDB;

CREATE TABLE COMPETENCE_EXPERIENCE(
IDEXPERIENCE SMALLINT NOT NULL,
IDCOMPETENCE SMALLINT NOT NULL,
CONSTRAINT competence_experience_pk PRIMARY KEY (IDEXPERIENCE, IDCOMPETENCE),
CONSTRAINT competence_experience_idforma FOREIGN KEY(IDEXPERIENCE) REFERENCES EXPERIENCE(ID),
CONSTRAINT competence_experience_idexp FOREIGN KEY(IDCOMPETENCE) REFERENCES COMPETENCE(ID)
)ENGINE = InnoDB;

-- insertion de donnees

-- Structures
INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)
VALUES('Ynov', 'lyon', '69000');

INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)
VALUES('ELLA', 'Vienne', '38200');

INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)
VALUES('TCL', 'Lyon', '69000');

INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)
VALUES('Maire', 'Chuzelles', '38200');

INSERT INTO STRUCTURES(NOM, VILLE, CODEPOSTAL)
VALUES('Forezia', 'Vienne', '38200');


-- Expériences
INSERT INTO EXPERIENCE(NOM, DUREEJOUR, IDSTRUCTURES)
VALUES('Amont guichets', '30j', 3);

INSERT INTO EXPERIENCE(NOM, DUREEJOUR, IDSTRUCTURES)
VALUES('Stage Marketing', '7j', 5);

INSERT INTO EXPERIENCE(NOM, DUREEJOUR, IDSTRUCTURES)
VALUES('Agent technique', '31j', 4);

-- Formations
INSERT INTO  FORMATION(NOM, DATEDEBUT, DATEFIN, ID_STRUCTURES)
VALUES('BAC', '2015-09-01', '2018-06-25', 2);

INSERT INTO  FORMATION(NOM, DATEDEBUT, DATEFIN, ID_STRUCTURES)
VALUES('BACHELOR', '2018-09-17', '2021-06-20', 1);

-- Infos personnel
INSERT INTO INFOPERSO(NOM,FIRSTNAME, BIRTHDAY, MAIL, ADRESSE, TELEPHONE)
VALUES('MONT', 'VALENTIN', '2000-01-15', 'VALENTINMONT8@GMAIL.COM','43 ROUTE MONT FERRAT RECOURS', '0651845896');

INSERT INTO PASSIONS(NOM, IDINFO)
VALUES('football', 1);

INSERT INTO PASSIONS(NOM, IDINFO)
VALUES('course à pieds', 1);

INSERT INTO PASSIONS(NOM, IDINFO)
VALUES('informatique', 1);

INSERT INTO PASSIONS(NOM, IDINFO)
VALUES('jeux videos', 1);

INSERT INTO COMPETENCE(NOM, NIVEAU, DOMAINE, IDINFOS)
VALUES('php', '90','informatique', 1);

INSERT INTO COMPETENCE(NOM, NIVEAU, DOMAINE, IDINFOS)
VALUES('html/css', '80','informatique', 1);

INSERT INTO COMPETENCE(NOM, NIVEAU, DOMAINE, IDINFOS)
VALUES('javascript', '30','informatique', 1);

INSERT INTO COMPETENCE(NOM, NIVEAU, DOMAINE, IDINFOS)
VALUES('sql', '60','informatique', 1);