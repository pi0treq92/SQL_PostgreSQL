create table pracownik
(
  id serial PRIMARY KEY,
  imie varchar(30) Not NULL,
  nazwisko varchar(50) NOT NULL,
  data_urodzenia DATE NOT NULL
);



create table wniosek
  (
      id serial PRIMARY KEY,
      data_zlozenia DATE not null
  );

create table dokumenty
  (
      id serial PRIMARY KEY,
      data_zlozenia DATE not null
  );

create table wnioskodawca
  (
    nr serial PRIMARY KEY,
    imie varchar(30) not null,
    nazwisko varchar(50) not null,
    data_urodzenia DATE not null
  );


create table wynik
  (
    id serial PRIMARY KEY,
    nazwa varchar(30)
  );

  create table bieg_spraw
    (
      id serial PRIMARY KEY,
      pracownik_id INTEGER not null,
      wnioskodawca_id INTEGER not null,
      wniosek_id INTEGER not null,
      constraint pracownik_id_fk Foreign KEY (pracownik_id)
      REFERENCES pracownik(id),
      constraint wnioskodawca_id_fk FOREIGN Key (wnioskodawca_id)
      REFERENCES wnioskodawca(nr),
      constraint wniosek_id_fk FOREIGN KEY (wniosek_id)
      REFERENCES wniosek(id)
    );

create table dok_wni
  (
    wniosek_id integer not null,
    dokumenty_id integer not null,
    constraint wniosek_id_fk FOREIGN key (wniosek_id)
    REFERENCES wniosek(id),
    constraint dokumenty_id_fk FOREIGN key (dokumenty_id)
    REFERENCES dokumenty(id)
  );

  create table decyzja
    (
      id serial PRIMARY KEY,
      data_decyzji Date not null,
      wynik_id INTEGER not null,
      pracownik_id INTEGER not null,
      wnioskodawca_id INTEGER not null,
      wniosek_id integer not null,
      constraint wynik_id_fk FOREIGN KEY (wynik_id)
      REFERENCES wynik(id),
      constraint pracownik_id_fk FOREIGN KEY (pracownik_id)
      REFERENCES pracownik(id),
      constraint wnioskodawca_id_fk FOREIGN KEY (wnioskodawca_id)
      REFERENCES wnioskodawca(nr),
      constraint wniosek_id_fk FOREIGN KEY (wniosek_id)
      REFERENCES wniosek(id)
    );
  CREATE TABLE audit_pracownik(
        operation         char(1)   NOT NULL,
        stamp             timestamp NOT NULL,
        userid            varchar(100)     NOT NULL,
        id serial PRIMARY KEY,
        imie varchar(30) Not NULL,
        nazwisko varchar(50) NOT NULL,
        data_urodzenia DATE NOT NULL
    );
