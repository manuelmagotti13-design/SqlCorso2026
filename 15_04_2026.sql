CREATE DATABASE ScuolaDb;
use ScuolaDb;
create table Studenti(
	StudenteId INT not null primary key identity(1,1),
	Nome NVARCHAR (150) NOT NULL,
	Cognome NVARCHAR (150) NOT NULL,
	Email NVARCHAR (150) NULL,
	Genere CHAR(1) NOT NULL,
);

SELECT * FROM Studenti 

SELECT StudenteID, Nome, Cognome, Email, Genere FROM Studenti;

-- inserimento dei dati nella tabella studenti
INSERT INTO Studenti
	(Nome, Cognome, Genere)
VALUES 
	('Manuel', 'Magotti', 'M'),
	('Riccardo', 'Lione', 'M');





