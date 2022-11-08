DROP DATABASE IF EXISTS baza;

CREATE DATABASE baza;

USE wedkowanie;

CREATE TABLE Ryby(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa TEXT,
    wystepowanie TEXT,
    styl_zycia INTEGER
);
CREATE TABLE Okres_ochronny(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Ryby_id int UNSIGNED NOT NULL,
    od_miesiaca INTEGER,
    do_miesiaca INTEGER,
    wymiar_ochronny INTEGER,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id)
);

CREATE TABLE Lowisko(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Ryby_id int UNSIGNED NOT NULL,
    akwen TEXT,
    wojewodztwo TEXT,
    rodzaj INTEGER,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id)
);