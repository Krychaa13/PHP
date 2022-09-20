DROP DATABASE IF EXISTS baza;
CREATE DATABASE baza;
USE baza;

CREATE TABLE lokale(
    id int NOT NULL IDENTITY PRIMARY KEY,
    nazwa TEXT,
    miasto TEXT,
    ulica TEXT,
    numer INTEGER
);

CREATE TABLE dania(
    id int NOT NULL IDENTITY PRIMARY KEY,
    typ INTEGER,
    nazwa TEXT,
    cena INTEGER
);

CREATE TABLE rezerwacje(
    id int NOT NULL IDENTITY PRIMARY KEY,
    nr_stolika INTEGER,
    data_rez DATE,
    liczba_osob INTEGER,
    telefon TEXT
);

CREATE TABLE pracownicy(
    id int NOT NULL IDENTITY PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    stanowisko INTEGER
); 
