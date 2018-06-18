select * from wniosek;
select * from dokumenty;
select * from wnioskodawca;
select * from pracownik;
select * from decyzja;
select * from bieg_spraw;
select * from wynik;



-- Wypisz imię, nazwisko oraz liczbę wniosków poszczególnych wnioskodawców
select imie, nazwisko, count(wnioskodawca_id) as liczba from wnioskodawca
inner join bieg_spraw on bieg_spraw.wnioskodawca_id = wnioskodawca.nr
group by imie, nazwisko, wnioskodawca_id;


-- Wypisz imie i nazwisko pracowników oraz liczbę podjętych decyzji
select imie, nazwisko, count(pracownik_id) as liczba from pracownik
inner join decyzja on decyzja.pracownik_id = pracownik.id
group by imie, nazwisko, pracownik_id;

--Utwórz widok w którym Wypisane zostaną imiona i nazwiska pracowników którzy nie podejmowali decyzji
create view leniwi_pracownicy As
select imie, nazwisko from pracownik
where imie not in (
select imie from pracownik
inner join decyzja on decyzja.pracownik_id = pracownik.id
group by imie, nazwisko);


-- Wypisz nazwiska pracowników zaczynających sie na litery M S lub K
select nazwisko from pracownik
where nazwisko like 'M%' or nazwisko like 'S%' or nazwisko like 'K%';

-- Wypisz imiona wnioskodawców którzy nie zaczynają się na literę A, M i O
select imie from wnioskodawca
where imie not like 'A%' and imie not like 'M%' and imie not like 'O%';


-- Utwórz widok który wypiszę datę złożeniaw wniosku, datę podjęcia decyzji oraz  liczbę dni potrzebnych na wydanie decyzji w sprawie złożonego wniosku
create view czas_podejmowania_decyzji as
select wniosek.id, data_zlozenia, data_decyzji, data_decyzji-data_zlozenia as liczba_dni from wniosek
inner join decyzja on decyzja.wniosek_id = wniosek.id;

-- Użycie poprzednio utworzonego widoku, wyświetl decyzje podjęte w mniej niż 20 dni
select liczba_dni from czas_podejmowania_decyzji
where liczba_dni<20;
-- Zsumuj ilosć poszczególnych decyzji

select nazwa, count(wynik_id) from wynik
left join decyzja on wynik.id = decyzja.wynik_id
group by wynik_id, nazwa;

-- Podaj imie, nazwisko oraz liczbę lat 3 najstarszych  wnioskodawców
Create view najstarsi_wnioskodawcy AS
select imie, nazwisko, date_part('year',(age(now(),data_urodzenia))) from wnioskodawca
order by date_part('year',(age(now(),data_urodzenia))) desc
limit 3;
select * from najstarsi_wnioskodawcy;


-- Policz średnią wieku pracowników podejmujących decyzje
select  avg(date_part('year',(age(now(),data_urodzenia)))) from pracownik
inner join decyzja on pracownik.id = decyzja.pracownik_id

-- zmien nazwe kolumny
alter table decyzja rename column data_decyzji to data_podjecia_decyzji;
select * from decyzja;
alter table decyzja rename column data_podjecia_decyzji to data_decyzji;
select * from decyzja;


-- Zaaktualizuj date wydania decyzji przez pracownika z id 3
update decyzja
set data_decyzji = '2018-04-11'
where pracownik_id = 3;

-- Zaaktualizuj date urodzenia pracownika urodzonego po 1 stycznia 1990
update wnioskodawca
set data_urodzenia = '1991-08-11'
where data_urodzenia not between '1900-01-01' and '1990-01-01';


-- Usuń pracownika o imieniu Piotr
delete from decyzja
where pracownik_id = 1;
