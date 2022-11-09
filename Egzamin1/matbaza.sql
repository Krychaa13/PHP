DROP DATABASE IF EXISTS baza;

CREATE DATABASE baza;

CREATE TABLE Reservation(
    id int AUTO_INCREMENT NOTNULL PRIMARY KEY,
    restaurant_table_id int FOREIGN KEY REFERENCES Restaurant_Table(id)
    phone_number VARCHAR(12),
    date DATETIME,
    number_of_guests INT,
);

CREATE TABLE Restaurant_Table(
    id int AUTO_INCREMENT NOTNULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    number_of_guests INT,
    restaurant_id int FOREIGN KEY REFERENCES Restaurant(id)
);

CREATE TABLE Restaurant(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    postcode VARCHAR(10) NOT NULL
);

CREATE TABLE Meal(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    meal_type_id int FOREIGN KEY REFERENCES MealType(id),
    restaurant_id int FOREIGN KEY REFERENCES Restaurant(id),
    price INT,
    meal_name VARCHAR(100)
);

CREATE TABLE MealType(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Employee(
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(225),
    personal_id_number VARCHAR(11)
);

CREATE TABLE Employment(
    employee_id int FOREIGN KEY REFERENCES Employee(id),
    employee_position_id int FOREIGN KEY REFERENCES Employee_Position(id),
    restaurant_id int FOREIGN KEY REFERENCES Restaurant(id)
);

CREATE TABLE Employee_Position(
    id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
);