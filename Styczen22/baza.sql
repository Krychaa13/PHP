DROP DATABASE IF EXISTS grzybobranie;

CREATE DATABASE grzybobranie;

USE grzybobranie;

CREATE TABLE Rodzina(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa TEXT
);

CREATE TABLE Potrawy(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nazwa TEXT
);

CREATE TABLE Grzyby(
    id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Rodzina_id int UNSIGNED NOT NULL,
    Potrawy_id int UNSIGNED NOT NULL,
    nazwa TEXT,
    potoczna TEXT,
    jadalny BOOLEAN,
    miesiac_zbierania INT,
    nazwa_pliku TEXT,  
    FOREIGN KEY (Rodzina_id) REFERENCES Rodzina(id),
    FOREIGN KEY (Potrawy_id) REFERENCES Potrawy(id)
);

--CREATE INSERTS
INSERT INTO Rodzina(nazwa) VALUES
    ("podgrzybek"),
    ("borowik"),
    ("kurka"),
    ("pieczarka");

INSERT INTO Potrawy(nazwa) VALUES
    ("zupa"),
    ("sos"),
    ("salatka"),
    ("kompot");

INSERT INTO Grzyby(Rodzina_id, Potrawy_id, nazwa, potoczna, jadalny, miesiac_zbierania, nazwa_pliku) VALUES
    (1, 1, "Boletus edulis", "Podgrzybek", 1, 8, "podgrzybek.jpg"),
    (2, 4, "Borowik Szlachetny", "Borowik", 1, 8, "borowik.jpg"),
    (3, 2, "Pieprznik", "Kurka", 1, 8, "kurka.jpg"),
    (4, 3, "Pieczarka", "Pieczarka", 1, 8, "pieczarka.jpg");