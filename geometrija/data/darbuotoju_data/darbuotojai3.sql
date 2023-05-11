-- -- 1. Išrinkite darbuotojų vardus ir pavardes
--  kartu su projekto pavadinimu, kuriame jie dirba.
SELECT DARBUOTOJAS.VARDAS, DARBUOTOJAS.PAVARDĖ, PROJEKTAS.PAVADINIMAS
 FROM DARBUOTOJAS, PROJEKTAS WHERE DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID

-- -- 2. Išsirinkite darbuotojų dirbančių projekte 
-- Galerija vardus, pavardes ir projekto pavadinimą.
SELECT DARBUOTOJAS.VARDAS, DARBUOTOJAS.PAVARDĖ, PROJEKTAS.PAVADINIMAS
FROM DARBUOTOJAS JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
 WHERE PAVADINIMAS = 'Galerija'

-- -- 3. Išrinkite visus projekto Projektų valdymas 
-- vykdytojus dirbančius Pardavimų skyriuje.

SELECT * FROM DARBUOTOJAS JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
JOIN SKYRIUS ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
WHERE SKYRIUS_ID = 3 and PROJEKTAS_ID = 2

--  4. Išrinkite visas moteris, dirbančias projekte 
-- Projektų valdymas ir išveskite į ekraną jų vardus, pavardes ir 
-- projekto pavadinimą.
SELECT VARDAS, PAVARDĖ, ASMENS_KODAS, PROJEKTAS.PAVADINIMAS 
FROM DARBUOTOJAS 
JOIN PROJEKTAS ON DARBUOTOJAS.PROJEKTAS_ID = PROJEKTAS.ID
WHERE DARBUOTOJAS.PROJEKTAS_ID = 2 AND DARBUOTOJAS.ASMENS_KODAS LIKE'4%' OR DARBUOTOJAS.ASMENS_KODAS LIKE'6%';


-- -- 5. Išrinkite skyrių pavadinimus su juose dirbančių darbuotojų skaičiumi.
SELECT SKYRIUS.PAVADINIMAS, count()
FROM DARBUOTOJAS
JOIN SKYRIUS ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
GROUP BY SKYRIUS.PAVADINIMAS


-- -- 6. Apribokite #5 užklausos rezultatą taip, kad
--  rodytų tik tuos skyrius kur dirba bent 5 darbuotojai.
SELECT SKYRIUS.PAVADINIMAS, count()
FROM DARBUOTOJAS
JOIN SKYRIUS ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
GROUP BY SKYRIUS.PAVADINIMAS
HAVING count()>5;

-- -- 7. Išrinkite darbuotojus (vardus, pavardes, pareigas)
--  kartu su skyrių, kuriuose jie dirba pavadinimais,
--   tačiau nesančius tų skyrių vadovais.

SELECT VARDAS, PAVARDĖ, PAREIGOS, SKYRIUS.PAVADINIMAS
FROM DARBUOTOJAS
JOIN SKYRIUS  ON DARBUOTOJAS.SKYRIUS_ID = SKYRIUS.ID
WHERE PAREIGOS != 'Vadovas';

-- -- 8. Sukurkite naują įrašą lentelėje “DARBUOTOJAS” 
-- (asmens kodas: 38807117896, vardas: Pranas, 
-- pavardė:Logis, Dirba nuo: 2009-11-12, visa kita - Null).
INSERT INTO DARBUOTOJAS(ID, VARDAS, PAVARDĖ, ASMENS_KODAS, PAREIGOS, DIRBA_NUO, BAZINIS_ATLYGINIMAS,
PRIEDAI, SKYRIUS_ID, PROJEKTAS_ID) VALUES('Pranas', 'Logis', '38807117896', NULL, '2009-11-12', NULL, NULL, NULL, NULL)

-- -- 9. Išrinkite darbuotojų vardus, pavardes ir skyriaus pavadinimą.
--  Rodykite, net ir tuos darbuotojus, kurie nedirba jokiame skyriuje
--   (skyriaus pavadinimą pasiimkite iš lentelės SKYRIUS).

-- -- 10. 1# punkto užklausą pataisykite taip, kad rodytų tik tuos vardus
--  ir projektų pavadinimus kuriuose dirba daugiau nei 4 darbuotojai.

-- -- 11. Naujame stulpeyje parodyti kiekvieno darbuotojo bazinio atlyginimo
--  ir priedų sumą.

-- -- 12. Parodyti bendrą atlyginimų, priedų sumą, vidutinį, maksimalų, minimalų
--  atlyginimą.