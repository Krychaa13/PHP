DROP DATABASE IF EXISTS kwiaciarnia;

CREATE DATABASE kwiaciarnia;

USE kwiaciarnia;

CREATE TABLE Kwiaciarnie(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa VARCHAR(20),
    miasto VARCHAR(20),
    ulica VARCHAR(20)
);

CREATE TABLE Zamowienia(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_kwiaciarni int UNSIGNED NOT NULL,
    data_zamowienia DATE,
    kwiaty TEXT,
    cena FLOAT,
    FOREIGN KEY (id_kwiaciarni) REFERENCES Kwiaciarnie(id)
);

INSERT INTO Kwiaciarnie(nazwa, miasto, ulica) VALUES
    ('Kwiaty', 'Warszawa', 'Marszałkowska 1'),
    ('Kwiaty', 'Warszawa', 'Marszałkowska 2'),
    ('Kwiaty', 'Warszawa', 'Marszałkowska 3'),
    ('Kwiaty', 'Warszawa', 'Marszałkowska 4');

INSERT INTO Zamowienia(id_kwiaciarni, data_zamowienia, kwiaty, cena) VALUES
    (1, '2023-05-28', 'Róże', 25.99),
    (2, '2023-06-20', 'Lilie', 30.50),
    (3, '2023-03-21', 'Gozdziki', 20.00),
    (4, '2023-04-23', 'Gipsówka', 50.30);

