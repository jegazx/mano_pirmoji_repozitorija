INSERT INTO destytojai (vardas, pavarde, skyrius, el_pastas)
VALUES('jonas', 'jonaitis', 'itisnykas', ' jonas@email.com');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('Petras', 'Petraitis', 'matematka', '8');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('ona', ' onaite', 'fizika', '9');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('marius', 'Marijus', 'Biologija', '7');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('Rasa', 'Rasaite', 'Anglu kalba', '12');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('Aurimas', 'Aurimaitis', 'Lietuviu kalba', '5');
INSERT INTO destytojai (vardas, pavarde, specialybe, patirtis_metais)
VALUES('Gintare', 'Gintarele', 'Istorija', '3');

SELECT * FROM destytojai where specialybe = 'matematka';