USE shibboleth;

CREATE TABLE IF NOT EXISTS RuoliOrganizzativi
(
	id MEDIUMINT NOT NULL,
	uid VARCHAR(255) NOT NULL,
	ruolo VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO RuoliOrganizzativi (id, uid,ruolo) VALUES 
	(0, 'mario', 'Tecnico'),
	(1, 'pino', 'Amministrativo'),
	(2, 'pina', 'Docente');
