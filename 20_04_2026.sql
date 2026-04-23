USE Aziendadb;

SELECT * FROM Assegnazioni;
SELECT * FROM Progetti;




SELECT * FROM Dipendenti

SELECT * FROM
SELECT * FROM


--ALTER TABLE MyTable 
--ALTER COLUMN NullCOl NVARCHAR (20) NOT NULL;

ALTER TABLE Progetti 
ALTER COLUMN Nome NVARCHAR(150);

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Clienti'
AND COLUMN_NAME = 'Email';

ALTER TABLE Dipendenti
ALTER COLUMN Stipendio (10,2) not null

ALTER TABLE Dipendenti
ADD Telefono NVARCHAR(50) NULL;

INSERT INTO Dipendenti (Nome, Cognome, Email, Stipendio, DataAssunzione, RepartoID, Telefono)
