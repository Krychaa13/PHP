DROP DATABASE IF EXISTS wedkowanie;

CREATE DATABASE wedkowanie;

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

INSERT INTO Ryby (nazwa, wystepowanie, styl_zycia) VALUES ('Łosoś', 'Może nieBałtyckie', 1);
INSERT INTO Ryby (nazwa, wystepowanie, styl_zycia) VALUES ('Pstrong Rtenciowy', 'Teraz już mosze bałtyckie napewno', 1);
INSERT INTO Ryby (nazwa, wystepowanie, styl_zycia) VALUES ('Akselot', 'Minecraft', 1);

INSERT INTO Lowisko (Ryby_id, akwen, wojewodztwo, rodzaj) VALUES (1, 'Słony', 'Odległohiszpańskie', 3);
INSERT INTO Lowisko (Ryby_id, akwen, wojewodztwo, rodzaj) VALUES (2, 'Półsłony', 'Łódzkie', 3);
INSERT INTO Lowisko (Ryby_id, akwen, wojewodztwo, rodzaj) VALUES (3, 'Morze słodki', 'Śródziemnomorksie', 2);