DROP DATABASE IF EXISTS baza3;
CREATE DATABASE baza3;
USE baza3;

CREATE TABLE zdjecia(
    id INT(10) PRIMARY KEY,
    nazwaPliku TEXT,
    podpis TEXT
);

CREATE TABLE wycieczki(
    id INT(10) PRIMARY KEY,
    zdjecia_id INT(10),
    dataWyjazdu DATE,
    cel TEXT,
    cena DOUBLE,
    dostepna TINYINT(1),
    FOREIGN KEY (zdjecia_id) REFERENCES zdjecia(id)
)