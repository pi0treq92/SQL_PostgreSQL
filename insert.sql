SET DATESTYLE TO 'European,German';

insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Rafał', 'Czerwiński', '1970-03-19');
insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Piotr', 'Lewandowski', '1975-03-11');
insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Kamil', 'Mucha', '1990-01-09');
insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Monika', 'Kobyła', '1986-11-07');
insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Jan', 'Kowalski', '1981-07-29');
insert into pracownik( imie, nazwisko, data_urodzenia)
  values ( 'Alicja', 'Kwiat', '1981-07-29');



insert into wniosek(data_zlozenia) values ('2017-06-03');
insert into wniosek(data_zlozenia) values ('2017-11-30');
insert into wniosek(data_zlozenia) values ('2017-12-20');
insert into wniosek(data_zlozenia) values ('2018-01-03');
insert into wniosek(data_zlozenia) values ('2018-02-06');
insert into wniosek(data_zlozenia) values ('2018-02-28');
insert into wniosek(data_zlozenia) values ('2018-03-01');
insert into wniosek(data_zlozenia) values ('2018-03-17');

insert into dokumenty(data_zlozenia) values ('2017-06-03');
insert into dokumenty(data_zlozenia) values ('2017-12-01');
insert into dokumenty(data_zlozenia) values ('2017-12-24');
insert into dokumenty(data_zlozenia) values ('2017-12-20');
insert into dokumenty(data_zlozenia) values ('2018-01-03');
insert into dokumenty(data_zlozenia) values ('2018-02-06');
insert into dokumenty(data_zlozenia) values ('2018-02-21');
insert into dokumenty(data_zlozenia) values ('2018-02-28');
insert into dokumenty(data_zlozenia) values ('2018-03-01');
insert into dokumenty(data_zlozenia) values ('2018-03-17');

insert into wnioskodawca(imie, nazwisko, data_urodzenia)
  values ( 'Włodzimierz', 'Cimoszewicz','1968-03-26');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Aneta', 'Kłódkowska', '1992-11-17');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Olga', 'Pawlak', '1990-10-31');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Mateusz', 'Rutkowski', '1980-01-02');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Rafał', 'Pawica', '1976-08-08');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Urszula', 'Spaślak', '1966-08-08');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Andrzej', 'Gołota', '1966-08-08');
insert into wnioskodawca( imie, nazwisko, data_urodzenia)
  values( 'Mahmed', 'Khalidov', '1978-08-08');

    insert into wynik(nazwa) values('Pozytywna');
    insert into wynik(nazwa) values('Negatywna');
    insert into wynik(nazwa) values('Prośba o uzupełnienie');

insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2017-07-02', 2, 2, 1, 1);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2017-12-19', 3, 3, 2, 2);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-01-11', 1, 1, 3, 3);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-01-18', 1, 1, 4, 4);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-02-17', 3, 2, 5, 5);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-03-11', 2, 1, 6, 6);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-03-20', 1, 2, 6, 7);
insert into decyzja(data_decyzji, wynik_id, pracownik_id, wnioskodawca_id, wniosek_id)
  values('2018-03-27', 2, 3, 2, 8);



insert into dok_wni(wniosek_id, dokumenty_id) values(1,1);
insert into dok_wni(wniosek_id, dokumenty_id) values(2,2);
insert into dok_wni(wniosek_id, dokumenty_id) values(2,3);
insert into dok_wni(wniosek_id, dokumenty_id) values(3,4);
insert into dok_wni(wniosek_id, dokumenty_id) values(4,5);
insert into dok_wni(wniosek_id, dokumenty_id) values(5,6);
insert into dok_wni(wniosek_id, dokumenty_id) values(5,7);
insert into dok_wni(wniosek_id, dokumenty_id) values(6,8);
insert into dok_wni(wniosek_id, dokumenty_id) values(7,9);
insert into dok_wni(wniosek_id, dokumenty_id) values(8,10);

  insert into bieg_spraw(pracownik_id, wnioskodawca_id, wniosek_id)
    values (3, 4, 4);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
    values (1, 3, 3);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
    values (5, 1, 1);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
    values (2, 5, 5);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
    values (1, 2, 2);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
    values (3, 2, 6);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
      values (2, 6, 7);
  insert into bieg_spraw( pracownik_id, wnioskodawca_id, wniosek_id)
      values (5, 2, 8);
