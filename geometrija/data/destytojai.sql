CREATE TABLE destytojai(
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR(50) NOT NULL,
pavarde VARCHAR(50) NOT NULL,
skyrius VARCHAR(100),
el_pastas VARCHAR(50)
);

-- ALTER TABLE destytojai ADD specialybe VARCHAR(50);
-- ALTER TABLE destytojai ADD patirtis_metais TINYINT(50); 
--DROP TABLE destytojai
--ALTER TABLE destytojai AFTER COLUMN skyrius TEXT;
SELECT * FROM destytojai where specialybe = 'matematka';
SELECT vardas, pavarde, specialybe FROM destytojai WHERE patirtis_metais > '8';
UPDATE destytojai
SET pavarde = 'Zoliene'
WHERE vardas = 'Rasa' AND pavarde = 'Rasaite'
DELETE FROM destytojai WHERE id = 4;