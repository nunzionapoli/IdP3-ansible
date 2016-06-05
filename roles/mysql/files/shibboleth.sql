SET NAMES 'utf8';

SET CHARACTER SET utf8;

CREATE DATABASE IF NOT EXISTS shibboleth CHARACTER SET=utf8;

GRANT ALL PRIVILEGES ON shibboleth.* TO shibboleth@localhost IDENTIFIED BY 'password';

FLUSH PRIVILEGES;

USE shibboleth;

CREATE TABLE IF NOT EXISTS shibpid
(
localEntity VARCHAR(255) NOT NULL,
peerEntity VARCHAR(255) NOT NULL,
persistentId VARCHAR(50) NOT NULL,
principalName VARCHAR(50) NOT NULL,
localId VARCHAR(50) NOT NULL,
peerProvidedId VARCHAR(50) NULL,
creationDate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
deactivationDate TIMESTAMP NULL default NULL,
PRIMARY KEY (localEntity, peerEntity, persistentId)
);

CREATE TABLE IF NOT EXISTS StorageRecords
(
context VARCHAR(255) NOT NULL,
id VARCHAR(255) NOT NULL,
expires BIGINT(20) DEFAULT NULL,
value LONGTEXT NOT NULL,
version BIGINT(20) NOT NULL,
PRIMARY KEY (context, id)
);

CREATE TABLE IF NOT EXISTS RuoliOrganizzativi
(
id MEDIUMINT NOT NULL,
uid VARCHAR(255) NOT NULL,
ruolo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO RuoliOrganizzativi (uid,ruolo) VALUES
       ('mario', 'Tecnico'),('pino', 'Amministrativo'),
       ('pina', 'Docente');


