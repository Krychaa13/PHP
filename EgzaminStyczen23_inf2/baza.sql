DROP DATABASE IF EXISTS wynajem;

CREATE DATABASE wynajem;

USE wynajem;

CREATE TABLE Pokoje(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa TEXT,
    cena INTEGER
);

CREATE TABLE Rezerwacje(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_pok int UNSIGNED NOT NULL,
    liczba_dn INTEGER,
    sezon TEXT,
    FOREIGN KEY (id_pok) REFERENCES Pokoje(id)
);

INSERT INTO Pokoje(nazwa, cena) VALUES
    ('Pokój 1-osobowy', 100),
    ('Pokój 2-osobowy', 150),
    ('Pokój 3-osobowy', 200),
    ('Pokój 4-osobowy', 250);

INSERT INTO Rezerwacje(id_pok, liczba_dn, sezon) VALUES
    (1, 3, 'wiosna'),
    (2, 5, 'lato'),
    (3, 7, 'jesień'),
    (4, 9, 'zima');
