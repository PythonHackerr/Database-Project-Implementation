set echo on
set linesize 300
set pagesize 500
spool BD2C026_DML.LIS

INSERT INTO udzialy_w_ankiecie (id_udzialu, id_klienta, data_wypelnienia) VALUES (111111111, 100014, TO_DATE('2033-02-12', 'YYYY-MM-DD'));

INSERT INTO klienci (id_klienta, imie, nazwisko, miasto, ulica, nr_domu, kod_pocztowy, poczta, nr_lokalu) VALUES (010101, 'Albert', 'Nowak', '?ód?', 'Piotrkowska', '56', '0-18', '?ód?', '10B');

INSERT INTO klienci (id_klienta, imie, nazwisko, miasto, ulica, nr_domu, kod_pocztowy, poczta, nr_lokalu) VALUES (010102, 'Bob', 'Karol', '?ód?', 'Piotrkowska', '56', '90---8', '?ód?', '10B');

INSERT INTO pytania (id_pytania, tresc, kategoria) VALUES (01, 'Jakie? pytanie', 'L');

INSERT INTO udzialy_w_ankiecie (id_udzialu, id_klienta, data_wypelnienia) VALUES (190004000, 190004, TO_DATE('2023-01-13', 'YYYY-MM-DD'));

spool off