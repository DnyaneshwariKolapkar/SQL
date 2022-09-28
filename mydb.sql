-- create simple database

CREATE DATABASE mydb;
USE mydb;

CREATE TABLE mytable (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO mytable (name) VALUES ('John');
INSERT INTO mytable (name) VALUES ('Mary');
INSERT INTO mytable (name) VALUES ('Peter');

SELECT * FROM mytable;

