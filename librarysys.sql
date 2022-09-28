DROP DATABASE IF EXISTS library;
CREATE DATABASE library;

USE library;


    CREATE TABLE books (
        book_id INT NOT NULL AUTO_INCREMENT,
        title VARCHAR(255) NOT NULL,
        edition VARCHAR(255) NOT NULL,
        author VARCHAR(255) NOT NULL,
        year_published VARCHAR(255) NOT NULL,
        category VARCHAR(255) NOT NULL,
        PRIMARY KEY (book_id)
    );


    CREATE TABLE book_copies (
        book_copy_id INT NOT NULL AUTO_INCREMENT,
        book_id INT NOT NULL,
        publisher_id INT NOT NULL,
        PRIMARY KEY (book_copy_id)
    );

    CREATE TABLE book_borrowers (
        book_borrower_id INT NOT NULL AUTO_INCREMENT,
        book_copy_id INT NOT NULL,
        borrower_id INT NOT NULL,
        date_borrowed DATE NOT NULL,
        date_returned DATE NOT NULL,
        PRIMARY KEY (book_borrower_id)
    );

    CREATE TABLE borrowers (
        borrower_id INT NOT NULL AUTO_INCREMENT,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        PRIMARY KEY (borrower_id)
    );

-- insert some data into the tables

INSERT INTO books (title, edition, author, year_published, category) VALUES ('The Alchemist', '1st', 'Paulo Coelho', '1988', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('The Kite Runner', '1st', 'Khaled Hosseini', '2003', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('The Da Vinci Code', '1st', 'Dan Brown', '2003', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('The Lost Symbol', '1st', 'Dan Brown', '2009', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Philosopher''s Stone', '1st', 'J.K. Rowling', '1997', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Chamber of Secrets', '1st', 'J.K. Rowling', '1998', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Prisoner of Azkaban', '1st', 'J.K. Rowling', '1999', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Goblet of Fire', '1st', 'J.K. Rowling', '2000', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Order of the Phoenix', '1st', 'J.K. Rowling', '2003', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Half-Blood Prince', '1st', 'J.K. Rowling', '2005', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('Harry Potter and the Deathly Hallows', '1st', 'J.K. Rowling', '2007', 'Fiction');
INSERT INTO books (title, edition, author, year_published, category) VALUES ('The Hobbit', '1st', 'J.R.R. Tolkien', '1937', 'Fiction');


INSERT INTO book_copies (book_id, publisher_id) VALUES (1, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (2, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (3, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (4, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (5, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (6, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (7, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (8, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (9, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (10, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (11, 1);
INSERT INTO book_copies (book_id, publisher_id) VALUES (12, 1);


INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (1, 1, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (2, 6, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (3, 4, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (4, 7, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (5, 3, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (6, 2, '2019-01-01', '2019-01-15');
INSERT INTO book_borrowers (book_copy_id, borrower_id, date_borrowed, date_returned) VALUES (7, 8, '2019-01-01', '2019-01-15');


INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (1, 'John', 'Doe');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (2, 'Jane', 'Doe');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (3, 'John', 'Smith');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (4, 'Jane', 'Smith');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (5, 'John', 'Doe');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (6, 'Jane', 'Doe');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (7, 'John', 'Smith');
INSERT INTO borrowers (borrower_id, first_name, last_name) VALUES (8, 'Jane', 'Smith');


-- display all the data in database in readable format

SELECT * FROM books;
SELECT * FROM book_copies;
SELECT * FROM book_borrowers;
SELECT * FROM borrowers;






    
