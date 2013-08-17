DROP TABLE IF EXISTS Nombre;
DROP TABLE IF EXISTS Datos;
CREATE TABLE Nombre (
       Nombre_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
       first_name VARCHAR (50),
       last_name VARCHAR (50),
       telephone VARCHAR (25),
       email VARCHAR (50),
       member_since DATE DEFAULT '0000-00-00',
       PRIMARY KEY (Nombre_id)
);
CREATE TABLE Datos (
	Datos_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR (50),
	description TEXT,
	Nombre_idfk SMALLINT UNSIGNED,
	PRIMARY KEY (Datos_id)
);
INSERT INTO Nombre (first_name, last_name, telephone, email, member_since)
       VALUES  	('Raul', 'Rangel', '614 123-4567', 'p253306@uach.mx', '2003-09-10'),
               	('Ricardo', 'Rangel', '618 443-4567', 'p253307@uach.mx', '2001-01-12'),
               	('Alejandra', 'Fierro', '614 555-4432', 'p192884@uach.mx', '2005-03-08');
INSERT INTO Datos (name, description, Nombre_idfk)
	VALUES  ('RAUL MARTIN RANGEL BARRETERO', 'Trabajo en el depto de ingenieria de SMTC, originario de Durango.', '1'),
		('ALEJANDRA FIERRO CHACON', 'Lider de proyectos de Desarrollo de Software. Estudiante', '3'),
	        ('RICARDO RANGEL BARRETERO', 'Trabajo en el Municipio de Durango. Estudiante', '2');