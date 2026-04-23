SELECT * FROM Clienti

ALTER TABLE Clienti ADD Indirizzo NVARCHAR(100);

INSERT INTO Clienti (Indirizzo) 
VALUES 'Via Roma 183'
WHERE Indirizzo is null

-- Aggiorna tutti i dipendenti del reparto IT
UPDATE Clienti
SET Indirizzo = 'Via Roma 183'
WHERE Indirizzo is null


UPDATE Clienti
SET Indirizzo = 'Via Padova 385'
WHERE ClienteID = 2

UPDATE Clienti
SET Indirizzo = 'Via Milano 287'
WHERE ClienteID = 3

UPDATE Clienti
SET Indirizzo = 'Via Venezia 21'
WHERE ClienteID = 4

UPDATE Clienti
SET Indirizzo = 'Via Bari 98'
WHERE ClienteID = 5

SELECT * FROM Clienti


--MODIFICA DEL NOME DELLA TABELLA--
EXEC sp_rename 'Clienti', 'ClientiAzienda';

SELECT * FROM Dipendenti

ALTER TABLE Dipendenti ADD Telefono NVARCHAR(50);

UPDATE Dipendenti
SET Cognome = 'Greco'
WHERE DipendenteID = 1;

UPDATE Dipendenti
SET Stipendio = stipendio + 500
WHERE Stipendio < 2600;

UPDATE Dipendenti
SET Stipendio = Stipendio*1.10;

SELECT * FROM Dipendenti

UPDATE Dipendenti
SET RepartoID = 1
WHERE DipendenteID = 42;

-- AS => ALIAS (DARE UN ALTRO NOME ALLA COLONNA)
-- INNER JOIN (JOIN), LEFT JOIN(DA SINISTRA), RIGHT JOIN(DA DESTRA)--
/*
SELECT Colonne da visualizzare
FROM Tabella1
INNER JOIN Tabella2
ON Condizione
*/

/*
USARE AS PER CAMBIARE I NOMI DELLE COLONNE E TABELLE come soprannomi
SOLO DIPENDENTI CHE HANNO UN REPARTO VALIDO
COLONNE DA VISUALIZZARE (COLONNA1,COLONNA2,COLONNA3,COLONNA4,COLONNA5)

*/

SELECT 
	d.Nome AS 'Nome degli schiavi',
	d.Cognome 'Cognome degli schiavi',
	d.Email 'Posta elettronica',
	r.Nome AS 'Nome del Reparto',
	r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r ON d.RepartoID = r.RepartoID;

SELECT * FROM Reparti
SELECT * FROM Dipendenti


-- Clienti(Nome, Telefono), 
-- Ordini(Data, Totale), 
-- Detaglio del Ordine (Prodotto, Quantità, Prezzo unitario)
SELECT 
	cl.Nome AS 'Nome del cliente',
	cl.Telefono AS Contatto,
	o.DataOrdine AS 'Data dell''ordine',
	d.Prodotto AS 'Nome del prodotto',
	d.Quantita AS 'Quantità del prodotto',
	d.PrezzoUnitario AS 'Prezzo Unitario',
	o.Totale AS 'Prezzo totale'
FROM Clienti AS cl
INNER JOIN Ordini AS o 
 -- a condizione che il ClienteID della tabella Ordini è uguale al ClienteID della tabella clienti
 -- Clienti.ClienteID = 1
 -- Ordini.ClienteID = 1
	ON o.ClienteID = cl.ClienteID
INNER JOIN DettagliOrdine as d 
	ON d.OrdineID = o.OrdineID


-- Ruolo, Nome e cognome


-- CONCATTENAZIONE (+)
SELECT
	d.Nome + ' ' + d.Cognome 'Nome Completo del dipendente',
	d.Email,
	r.Nome AS 'Nome del Reparto',
	r.Sede
FROM Dipendenti AS d
INNER JOIN Reparti AS r 
ON d.RepartoID = r.RepartoID

/*
	SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/