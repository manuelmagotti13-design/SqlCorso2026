/*
	SUM, AVG, COUNT, MIN e MAX 
	permettono calcoli su gruppi di dati in SQL Server.
*/
use Aziendadb

SELECT * FROM Assegnazioni

-- contare le righe di una tabella (count) -- 

SELECT COUNT(*) AS 'Totale righe' FROM Assegnazioni;

SELECT COUNT(Assegnazioni.RUOLO) AS 'Totale ruoli' FROM Assegnazioni;

SELECT * FROM Clienti

SELECT COUNT(*) AS 'Totale clienti' FROM Clienti;

-- AVG = PER LA MEDIA --

SELECT * FROM Dipendenti

SELECT AVG(Stipendio) AS 'Stipendio medio' FROM Dipendenti;

SELECT COUNT(*) AS TOTALERIGHE, 
	AVG(Stipendio) AS 'Stipendio medio' FROM Dipendenti;

--SUM = PER LA SOMMA --

SELECT SUM(Stipendio) AS 'Totale stipendi' FROM Dipendenti;

SELECT COUNT(*) AS 'Totale Righe', 
	SUM(Stipendio) AS 'Totale stipendi', 
	AVG(Stipendio) AS 'Stipendio medio' FROM Dipendenti;

--MIN = PER IL VALORE MINIMO --
SELECT MIN(Stipendio) AS 'Stipendio minimo' FROM Dipendenti;

SELECT COUNT(*) AS 'Totale Righe', 
	SUM(Stipendio) AS 'Totale stipendi', 
	AVG(Stipendio) AS 'Stipendio medio',
	MIN(Stipendio) AS 'Stipendio minimo' FROM Dipendenti;

--MAX = PER IL VALORE MASSIMO --
SELECT MAX(Stipendio) AS 'Stipendio massimo' FROM Dipendenti;

SELECT COUNT(*) AS 'Totale Righe', 
	SUM(Stipendio) AS 'Totale stipendi', 
	AVG(Stipendio) AS 'Stipendio medio',
	MIN(Stipendio) AS 'Stipendio minimo',
	MAX(Stipendio) AS 'Stipendio massimo' FROM Dipendenti;

-- Esempio: Stipendio x reparto unendoli anche con GROUP BY E ORDER BY--
/*
NOME COMPLETO DEL DIPENDENTE,
SALARIO,
STIPENDIO MEDIO,
NOME DEL REPARTO,
SEDE
*/
SELECT
	d.Nome + '  ' + d.Cognome AS 'Nome completo del dipendente',
	d.Stipendio,
	AVG(d.stipendio) AS 'Stipendio medio',
	R.Nome AS 'Nome del Reparto',
	R.Sede
	FROM Dipendenti AS d
	INNER JOIN Reparti AS r ON d.RepartoID = r.RepartoID
	GROUP BY d.Nome, d.Cognome, d.Stipendio, r.Nome, r.Sede
	ORDER BY r.Nome DESC
