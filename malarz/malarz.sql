CREATE DATABASE IF NOT EXISTS malarz;
USE malarz;

CREATE TABLE IF NOT EXISTS farby (
    id_farby INT NOT NULL PRIMARY KEY,
    kolor TEXT NOT NULL,
    cena INT NOT NULL,
    pojemosc INT NOT NULL
);

INSERT INTO farby (id_farby, kolor, cena, pojemosc)
VALUES (1, 'biały', 20, 5),
       (2, 'czerwony', 30, 3),
       (3, 'niebieski', 35, 3),
       (4, 'żółty', 22, 4),
       (5, 'zielony', 30, 4),
       (6, 'czarny', 50, 2),
       (7, 'fioletowy', 64, 3);

CREATE TABLE IF NOT EXISTS malowanie (
    id_pomieszczenia INT NOT NULL,
    id_sciany INT NOT NULL,
    id_farby INT NOT NULL,
    liczba_puszek INT NOT NULL,
    PRIMARY KEY (id_pomieszczenia, id_sciany),
    FOREIGN KEY (id_farby) REFERENCES farby(id_farby)
);

LOAD DATA INFILE './malowanie.txt'
INTO TABLE malowanie
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'