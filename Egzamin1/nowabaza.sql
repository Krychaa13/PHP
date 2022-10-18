DROP DATABASE IF EXISTS Restaurants

CREATE DATABASE Restaurants

CREATE TABLE Restaurant(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    namer VARCHAR(50) NOT NULL,
    city VARCHAR(30) NOT NULL,
    adress VARCHAR(100) NOT NULL,
    zipcode VARCHAR(6) NOT NULL,
)
CREATE TABLE Employee(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Names VARCHAR(60),
    surname VARCHAR(50),
    roleid VARCHAR(11),
    pin VARCHAR(11),
)
CREATE TABLE RestaurantsEmployee(
    RestaurantsId int FOREIGN KEY REFERENCES Restaurant(id),
    EmployeeId int FOREIGN KEY REFERENCES Employee(id),
    RoleId int FOREIGN KEY REFERENCES Role(id)
)
CREATE TABLE Role(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Names VARCHAR(50) NOT NULL,
)
CREATE TABLE Reservation(
    id int AUTO_INCREMENT NOTNULL PRIMARY KEY,
    phone VARCHAR(12) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    guests int NOT NULL,
    dater DATATIME,
    RestaurnatId int FOREIGN KEY REFERENCES Restaurant(id),
)
CREATE TABLE Meal(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Names VARCHAR(50)
    MealTypeId int FOREIGN KEY REFERENCES MealType(id)
)
CREATE TABLE MealType(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Names VARCHAR(50),
)