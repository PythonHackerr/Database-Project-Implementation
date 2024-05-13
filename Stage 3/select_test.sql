set echo on
set linesize 300
set pagesize 500
spool BD2C026_TEST.LIS

    
-- Klienty oraz ich odpowiedzi na wszystkie pytania w ankiecie
SELECT k.imie, k.nazwisko, p.tresc AS pytanie, o.tresc AS odpowiedz
FROM klienci k
JOIN udzialy_w_ankiecie u ON k.id_klienta = u.id_klienta
JOIN odpowiedzi_na_pytanie onp ON u.id_udzialu = onp.id_udzialu
JOIN odpowiedzi o ON onp.id_odpowiedzi = o.id_odpowiedzi
JOIN pytania p ON o.id_pytania = p.id_pytania;

/
-- Wszystkie pytania z ankiet i liczba odpowiedzi na to pytanie
SELECT p.tresc AS pytanie, COUNT(onp.id_odpowiedzi) AS liczba_odpowiedzi
FROM pytania p
JOIN odpowiedzi o ON p.id_pytania = o.id_pytania
JOIN odpowiedzi_na_pytanie onp ON o.id_odpowiedzi = onp.id_odpowiedzi
GROUP BY p.tresc;

/
-- Liczba udzia?ów wed?ug miast
SELECT k.miasto, COUNT(u.id_udzialu) AS liczba_udzialow
FROM klienci k
JOIN udzialy_w_ankiecie u ON k.id_klienta = u.id_klienta
GROUP BY k.miasto;

/
-- Wszystkie klienty, którzy wzi?li udzia? w ankietach w okre?lonym dniu
SELECT k.imie, k.nazwisko, k.miasto, u.data_wypelnienia
FROM klienci k
JOIN udzialy_w_ankiecie u ON k.id_klienta = u.id_klienta
WHERE u.data_wypelnienia = TO_DATE('2023-02-12', 'YYYY-MM-DD');

/

-- Cz?stotliwo?? ka?dej odpowiedzi na konkretne pytanie
SELECT o.tresc AS odpowiedz, COUNT(*) AS liczba_wystapien
FROM odpowiedzi o
JOIN odpowiedzi_na_pytanie onp ON o.id_odpowiedzi = onp.id_odpowiedzi
JOIN pytania p ON o.id_pytania = p.id_pytania
WHERE p.id_pytania = 15
GROUP BY o.tresc;

spool off





