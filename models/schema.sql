DROP DATABASE IF EXISTS bookClub_db;
CREATE DATABASE bookClub_db;

use bookClub_db;

create table readers
(
	id int NOT NULL AUTO_INCREMENT,
	firstName varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
	birthdate date NOT NULL,
    gender varchar(50),
    email varchar(50),
    createdAt datetime, 
    updatedAt datetime,
    -- current
	PRIMARY KEY (id)
    -- PRIMARY KEY (user_name)
);

INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Kristal', 'Murphy','1985/01/01', 'female', 'iknow@mystuff.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Tyler', 'Niccols','1979/02/02', 'male', 'awesomecoder@youknowthis.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Vitaliy', 'Feyster', '1982/03/03', 'male','theukrainetrain@muzhik.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Alex', 'Tardif', '1979/04/04', 'male', 'myfrontendisbetter@thanyours.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Patrick', 'Thompson','1980/03/18', 'male', 'pt@alongfortheride.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Captain', 'Marvel', '1988/06/06', 'female', 'badmamajama@marvel.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Wonder', 'Wonder', '1984/07/07', 'female','imawonder@dc.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Billy', 'Gruff', '1960/04/04', 'male', 'thegoat@gruff.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Joe', 'Bob', '1973/02/02', 'male', 'jb@redneck.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Super', 'Man', '1965/02/02', 'male', 'imsuper@dc.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Aunt', 'Sally', '1959/03/03', 'female', 'icanhelp@withalgebra.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Bille', 'Jean', '1969/04/04', 'female','bj@notmylover.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Mark', 'Morris', '1970/01/01', 'male','onehit@wonder.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Leo', 'Qiu', '1992/04/15', 'male', 'leo@goesger.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO readers (firstName, lastName, birthdate, gender, email, createdAt, updatedAt) VALUES ('Mark', 'Davis', '1963/02/02', 'male', 'thehead@raider.com', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table locations
(
	id int NOT NULL AUTO_INCREMENT,
    placeName varchar(50),
    placeAddress varchar(50),
    meetingTimes varchar(50),
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Friday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Saturday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO locations (placeName, placeAddress, meetingTimes, createdAt, updatedAt) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Sunday Night', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table promotedBooks
(
	id int NOT NULL AUTO_INCREMENT,
    title varchar(50),
    author varchar(50),
    monthAndYearPromoted date,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Action Bible', 'God', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Kama Sutra for Beginner', 'Joshua Matthew', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Yellow Pages', 'Yellow Pages', '2019/04/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Lord of the Rings', 'J.R.R. Tolkien', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Wheel of Time', 'Brandon Sanderson', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('1984', 'George Orwell', '2019/05/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('The Space Trilogy', 'C.S. Lewis', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Enders Game', 'Orson Scott Card', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO promotedBooks (title, author, monthAndYearPromoted, createdAt, updatedAt) VALUES ('Brave New World', 'Aldous Huxley', '2019/06/01', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table favoriteBooks
(
	id int NOT NULL AUTO_INCREMENT,
	bookId int NOT NULL,
    readerId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('10', '7', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('10', '4', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO favoriteBooks (bookId, readerId, createdAt, updatedAt) VALUES ('1', '6', '2019-04-06 22:18:59', '2019-04-06 22:18:59');

create table bookClubs
(
	id int NOT NULL AUTO_INCREMENT,
	bookId int NOT NULL,
    readerId int NOT NULL,
    locationId int NOT NULL,
    createdAt datetime, 
    updatedAt datetime,
    PRIMARY KEY (id)
);

INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '3', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '2', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '1', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('1', '6', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '7', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '6', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('10', '3', '2', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('7', '8', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '10', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '11', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '15', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '9', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '12', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '4', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');
INSERT INTO bookClubs (bookId, readerId, locationId, createdAt, updatedAt) VALUES ('3', '5', '3', '2019-04-06 22:18:59', '2019-04-06 22:18:59');


SELECT * FROM locations;
SELECT * FROM promotedBooks;
SELECT * FROM favoriteBooks;
SELECT * FROM bookClubs;

SELECT * FROM readers;


-- WRITE SCHEMA FOR JOINING BOOKS WITH USERS