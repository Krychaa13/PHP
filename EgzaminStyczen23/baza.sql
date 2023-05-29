DROP DATABASE IF EXISTS wedkarstwo;

CREATE DATABASE wedkarstwo;

USE wedkarstwo;

CREATE TABLE Lowisko(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    akwen TEXT,
    wojewodztwo TEXT,
    rodzaj INTEGER
);

CREATE TABLE Karty_wedkarskie(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    adres TEXT,
    data_zezwolenia DATE,
    punkty INTEGER
);

CREATE TABLE Zawody_wedkarskie(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Karty_wedkarskie_id int UNSIGNED NOT NULL,
    Lowisko_id int UNSIGNED NOT NULL,
    data_zawodow DATE,
    sedzia TEXT,
    FOREIGN KEY (Karty_wedkarskie_id) REFERENCES Karty_wedkarskie(id),
    FOREIGN KEY (Lowisko_id) REFERENCES Lowisko(id)
);

--CREATE INSERTS
INSERT INTO Lowisko(akwen, wojewodztwo, rodzaj) VALUES
    ('Jezioro', 'Mazowieckie', 1),
    ('Rzeka', 'Mazowieckie', 2),
    ('Staw', 'Mazowieckie', 3),
    ('Jezioro', 'Wielkopolskie', 1),
    ('Rzeka', 'Wielkopolskie', 2);

INSERT INTO Karty_wedkarskie(imie, nazwisko, adres, data_zezwolenia, punkty) VALUES
    ('Jan', 'Kowalski', 'Warszawa', '2019-01-01', 10),
    ('Adam', 'Nowak', 'Poznan', '2019-01-01', 10),
    ('Piotr', 'Kowalski', 'Warszawa', '2019-01-01', 10),
    ('Jan', 'Nowak', 'Poznan', '2019-01-01', 10),
    ('Adam', 'Kowalski', 'Warszawa', '2019-01-01', 10);

INSERT INTO Zawody_wedkarskie(Karty_wedkarskie_id, Lowisko_id, data_zawodow, sedzia) VALUES
    (1, 1, '2019-01-01', 'Jan Kowalski'),
    (2, 2, '2019-01-01', 'Adam Nowak'),
    (3, 3, '2019-01-01', 'Piotr Kowalski'),
    (4, 4, '2019-01-01', 'Jan Nowak'),
    (5, 5, '2019-01-01', 'Adam Kowalski');